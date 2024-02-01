import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:janken/data/models/statistics_log_model.dart';
import 'package:janken/domain/ai/janken_ai.dart';
import 'package:janken/domain/match/match_manager.dart';
import 'package:ml_reservoir/ml_reservoir.dart';

/// janken aiから出てきたデータをViewで使いやすい形に変換したり
/// 訓練データを受け取ってjanken aiに使いやすい形に変換したりする
abstract class JankenAiManager {
  final JankenAi ai;
  final StatisticsLogModel statisticsLog;
  JankenAiManager(
    this.ai,
    this.statisticsLog,
  );
  void addInput(
    PlayerHandType userInputs,
    List<int> aiCards,
    List<int> userCards,
  );
  PlayerHandType nextAiHand(List<int> aiCards, List<int> userCards);
}

class JankenAiManagerImpl implements JankenAiManager {
  @override
  StatisticsLogModel statisticsLog;
  @override
  final JankenAi ai;
  final int maxCurrentLogTurn = 16;
  final int refitAiPerTurn = 10;
  JankenAiManagerImpl(
    this.ai,
    this.statisticsLog,
  );
  @override
  void addInput(
    PlayerHandType userInputs,
    List<int> aiCards,
    List<int> userCards,
  ) {
    final currentLogLength = statisticsLog.currentInputs.length;
    if (currentLogLength >= maxCurrentLogTurn) {
      statisticsLog.currentInputs.removeAt(0);
      statisticsLog.currentEnemyInputsOneHot.removeAt(0);
    }
    statisticsLog.currentInputs.add(
      [
        ...aiCards.map((e) => e.toDouble()),
        ...userCards.map((e) => e.toDouble()),
      ],
    );
    statisticsLog.currentEnemyInputsOneHot.add(
      [
        if (userInputs == PlayerHandType.rock) 1.0 else 0.0,
        if (userInputs == PlayerHandType.scissors) 1.0 else 0.0,
        if (userInputs == PlayerHandType.paper) 1.0 else 0.0,
      ],
    );
    //print(statisticsLog);
  }

  @override
  PlayerHandType nextAiHand(List<int> aiCards, List<int> userCards) {
    if (statisticsLog.currentInputs.length < 2) {
      return PlayerHandType.values[RandomRef().random.nextInt(3)];
    } else {
      ai.train(
        [statisticsLog.currentInputs],
        [statisticsLog.currentEnemyInputsOneHot],
      );
    }
    final nextHand = ai.getNextHand(
      [
        ...aiCards.map((e) => e.toDouble()),
        ...userCards.map((e) => e.toDouble()),
      ],
      refitRegressor: false,
      trainY: statisticsLog.currentEnemyInputsOneHot,
    );
    final argMax =
        nextHand.indexWhere((element) => element == nextHand.reduce(max));
    return PlayerHandType.values[argMax].winHand();
  }
}

class MockJankenAiManager implements JankenAiManager {
  @override
  void addInput(
      PlayerHandType userInputs, List<int> aiCards, List<int> userCards) {
    // TODO: implement addInput
  }

  @override
  // TODO: implement ai
  JankenAi get ai => throw UnimplementedError();

  @override
  PlayerHandType nextAiHand(List<int> aiCards, List<int> userCards) {
    RandomRef randomRef = RandomRef();
    return PlayerHandType.values[randomRef.random.nextInt(3)];
  }

  @override
  // TODO: implement statisticsLog
  StatisticsLogModel get statisticsLog => throw UnimplementedError();
}

final aiManagerProvider = Provider((ref) {});
final aiProvider = Provider((ref) {
  final reservoir = ReservoirModule.newNetwork(6);
  const regressor = Regressor.fit;
  return JankenAiImpl(
    reservoir,
    regressor,
  );
});
