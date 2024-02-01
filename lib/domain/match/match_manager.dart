import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:janken/data/models/player_state_model.dart';
import 'package:janken/data/models/statistics_log_model.dart';
import 'package:janken/data/models/turn_info_model.dart';
import 'package:janken/data/services/ai/ai_manager.dart';
import 'package:janken/data/services/log/game_data_controller.dart';
import 'package:janken/domain/ai/janken_ai.dart';

enum ResultType {
  win,
  lose,
  draw,
  skip,
}

enum PlayerHandType {
  rock,
  scissors,
  paper,
  ult;

  ResultType compare(PlayerHandType other) {
    switch (this) {
      case PlayerHandType.rock:
        switch (other) {
          case PlayerHandType.rock:
            return ResultType.draw;
          case PlayerHandType.scissors:
            return ResultType.win;
          case PlayerHandType.paper:
            return ResultType.lose;
          case PlayerHandType.ult:
            return ResultType.win;
        }
      case PlayerHandType.scissors:
        switch (other) {
          case PlayerHandType.rock:
            return ResultType.lose;
          case PlayerHandType.scissors:
            return ResultType.draw;
          case PlayerHandType.paper:
            return ResultType.win;
          case PlayerHandType.ult:
            return ResultType.win;
        }
      case PlayerHandType.paper:
        switch (other) {
          case PlayerHandType.rock:
            return ResultType.win;
          case PlayerHandType.scissors:
            return ResultType.lose;
          case PlayerHandType.paper:
            return ResultType.draw;
          case PlayerHandType.ult:
            return ResultType.win;
        }
      case PlayerHandType.ult:
        return ResultType.skip;
    }
  }

  PlayerHandType winHand() {
    switch (this) {
      case PlayerHandType.rock:
        return PlayerHandType.paper;
      case PlayerHandType.scissors:
        return PlayerHandType.rock;
      case PlayerHandType.paper:
        return PlayerHandType.scissors;
      case PlayerHandType.ult:
        return PlayerHandType.ult;
    }
  }
}

/// ゲームのルール
/// じゃんけんに勝つとそのカードの値ぶんダメージを与える
/// ダメージを与えると非線形にULTがたまる　MAXは32
/// ULTはデバフ、バフ、の2種類
/// デバフは相手のカードの値を下げる
/// バフは自分のカードの値を上げる
/// 3ターン継続
/// AIは最新16手のみを記憶する
/// HPは64
abstract class MatchManager {
  double get ultMax;
  int get hpMax;
  int get ultContinuousTurn;
  int get minCardPoint;
  int get maxCardPoint;
  //GameLogController get gameLogController;

  JankenAiManager get ai;

  void matchInitialize();

  TurnInfoModel nextTurn(TurnInfoModel prevTurnInfo, PlayerHandType userInput);
  bool isMatchEnd();
}

// ゲームの流れ
// 1. カードを配る
// 2. AIの手を決める
// 3. 自分の手を決める<-turnInfo更新開始
// 4. ダメージによるステータスの変化 <-HP,ULT更新
// 5. 勝敗を決める <-result更新
// 6. 次に配るカードを決める <-nextCards更新
// 7. 次のAIの手を決める <-nextAiHands更新
// 8. 演出後ターンを進める　<-turnInfo更新終了
//　演出に必要な情報（ユーザの入力以外）
// 1. 勝ちカードの値
// 2. AIの手（ゲーム開始時）
// 3. 勝ち負けの結果(ゲーム終了時)
// 4. 次のターンのカード
// 5. 次のターンのULT

class MatchManagerImpl implements MatchManager {
  @override
  final double ultMax = 1;
  @override
  final int hpMax = 128;
  @override
  final int ultContinuousTurn = 3;
  // @override
  // final GameLogController gameLogController;

  @override
  final JankenAiManager ai;

  @override
  final int minCardPoint = 3;

  @override
  final int maxCardPoint = 10;

  MatchManagerImpl({
    //required this.gameLogController,
    required this.ai,
  });

  @override
  void matchInitialize() {}

  @override
  bool isMatchEnd() {
    return false;
  }

  @override
  TurnInfoModel nextTurn(TurnInfoModel prevTurnInfo, PlayerHandType userInput) {
    TurnInfoModel nextTurnInfo = prevTurnInfo.copyWith(
      turn: prevTurnInfo.turn,
    );
    PlayerStateModel aiState = prevTurnInfo.aiState;
    PlayerStateModel userState = prevTurnInfo.userState;
    ResultType result = prevTurnInfo.result;
    PlayerHandType aiInputType = prevTurnInfo.aiInputType;
    List<int> aiHands = [...aiState.hands];
    List<int> userHands = [...userState.hands];
    aiState = nextPlayerState(
      aiState,
      aiInputType,
      userInput,
      userHands,
    );
    userState = nextPlayerState(
      userState,
      userInput,
      aiInputType,
      aiHands,
    );
    result = userInput.compare(aiInputType);
    ai.addInput(userInput, aiHands, userHands);
    nextTurnInfo = nextTurnInfo.copyWith(
      turn: prevTurnInfo.turn + (result == ResultType.skip ? 0 : 1),
      aiState: aiState,
      userState: userState,
      result: result,
      aiInputType: ai.nextAiHand(aiState.hands, userState.hands),
    );
    return nextTurnInfo;
  }

  PlayerStateModel nextPlayerState(
    PlayerStateModel prevPlayerState,
    PlayerHandType playerInput,
    PlayerHandType enemyInput,
    List<int> enemyPointList,
  ) {
    PlayerStateModel nextPlayerState = prevPlayerState.copyWith(
      hands: makeNextCard(prevPlayerState.remainUltTurn > 0),
    );
    if (playerInput == PlayerHandType.ult) {
      nextPlayerState = nextPlayerState.copyWith(
        ult: 0,
        remainUltTurn: ultContinuousTurn,
      );
      return nextPlayerState;
    }

    final result = playerInput.compare(enemyInput);
    if (result == ResultType.win) {
      //勝った場合
    } else if (result == ResultType.lose) {
      //負けた場合
      final damage = enemyPointList[enemyInput.index];

      nextPlayerState = nextPlayerState.copyWith(
        hp: nextPlayerState.hp - damage,
      );
    }
    final nextUlt = _calcUlt(
      nextPlayerState.hands[playerInput.index].toDouble(),
      0,
      nextPlayerState,
      result,
    );
    nextPlayerState = nextPlayerState.copyWith(
      ult: nextUlt,
      remainUltTurn: nextPlayerState.remainUltTurn > 0
          ? nextPlayerState.remainUltTurn - 1
          : 0,
    );
    return nextPlayerState;
  }

  List<int> makeNextCard(bool isUlt) {
    final nextCards = <int>[];
    for (int i = 0; i < 3; i++) {
      nextCards.add(
        Random().nextInt(
          (maxCardPoint - minCardPoint + minCardPoint) * (isUlt ? 2 : 1),
        ),
      );
    }
    return nextCards;
  }

  double _calcUlt(
      double damage, int turn, PlayerStateModel state, ResultType result) {
    if (state.ult == 1 || state.remainUltTurn > 0) {
      return state.ult;
    } else if (result == ResultType.draw) {
      return state.ult + 0.01 * turn;
    }
    final remainHp = (state.hp / hpMax) + 0.4;
    final remainHpUltBonus = 1 / (1 + exp(remainHp * 10)); //sigmoid
    final damageUltBonus = damage / 10 * (result == ResultType.win ? 1.5 : 1);
    final ult = state.ult + (remainHpUltBonus + damageUltBonus) * 0.5;
    return min(ult, ultMax.toDouble());
  }
}

final matchManagerProvider = Provider(
  (ref) => MatchManagerImpl(
    //gameLogController: ref.watch(gameLogControllerProvider),
    ai: JankenAiManagerImpl(
      ref.watch(jankenAiProvider),
      StatisticsLogModel(
        currentInputs: [],
        currentEnemyInputsOneHot: [],
      ),
    ),
  ),
);
