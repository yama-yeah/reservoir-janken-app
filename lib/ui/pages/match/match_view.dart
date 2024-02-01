import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:janken/data/models/player_state_model.dart';
import 'package:janken/data/models/turn_info_model.dart';
import 'package:janken/domain/match/match_manager.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:janken/ui/pages/match/match_view_data_model.dart';
import 'package:riverpod/src/notifier.dart';

class MatchView extends HookConsumerWidget {
  const MatchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchViewDataModel = ref.watch(matchViewModelProvider);
    final matchViewViewModel = ref.watch(matchViewModelProvider.notifier);
    return MatchViewBody(
      matchViewModel: matchViewViewModel,
      matchViewDataModel: matchViewDataModel,
    );
  }
}

class MatchViewBody extends HookConsumerWidget {
  final MatchViewModel matchViewModel;
  final MatchViewDataModel matchViewDataModel;

  const MatchViewBody({
    super.key,
    required this.matchViewModel,
    required this.matchViewDataModel,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //print(matchViewDataModel);
    return Scaffold(
      appBar: AppBar(
        title: Text('じゃんけん'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PlayerStateRow(playerState: matchViewDataModel.turnInfo.aiState),
            HandsRow(
              atackPoints: matchViewDataModel.turnInfo.aiState.hands,
              onSelected: (userInput, atackPoint) {},
            ),
            const Spacer(),
            Text(matchViewDataModel.turnInfo.turn > 0
                ? matchViewDataModel.turnInfo.result.name
                : ''),
            const Spacer(),
            HandsRow(
              atackPoints: matchViewDataModel.turnInfo.userState.hands,
              onSelected: (userInput, atackPoint) {
                matchViewModel.nextTurn(userInput);
              },
            ),
            PlayerStateRow(playerState: matchViewDataModel.turnInfo.userState),
          ],
        ),
      ),
    );
  }
}

class MatchViewModel extends StateNotifier<MatchViewDataModel> {
  final MatchManager matchManager;
  MatchViewModel(this.matchManager)
      : super(
          MatchViewDataModel(
            turnInfo: TurnInfoModel(
              turn: 0,
              userState: PlayerStateModel(
                hp: 100,
                remainUltTurn: 0,
                ult: 0,
                hands: [1, 1, 1],
              ),
              aiState: PlayerStateModel(
                hp: 100,
                remainUltTurn: 0,
                ult: 0,
                hands: [1, 1, 1],
              ),
              result: ResultType.draw,
              aiInputType: PlayerHandType.paper,
            ),
          ),
        );
  MatchViewModel.froomJson(Map<String, dynamic> json, this.matchManager)
      : super(MatchViewDataModel.fromJson(json));
  void setTurnInfo(TurnInfoModel turnInfo) {
    state = state.copyWith(turnInfo: turnInfo);
  }

  void nextTurn(PlayerHandType userInput) {
    final turnInfo = matchManager.nextTurn(state.turnInfo, userInput);
    state = state.copyWith(turnInfo: turnInfo);
  }
}

final matchViewModelProvider =
    StateNotifierProvider<MatchViewModel, MatchViewDataModel>(
  (ref) => MatchViewModel(
    ref.watch(matchManagerProvider),
  ),
);

class HandsRow extends HookConsumerWidget {
  final List<int> atackPoints;
  final void Function(PlayerHandType, int) onSelected;
  const HandsRow({
    super.key,
    required this.atackPoints,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: Text('✊ ${atackPoints[0]}'),
          onPressed: () {
            onSelected(PlayerHandType.rock, atackPoints[0]);
          },
        ),
        TextButton(
          child: Text('✌️ ${atackPoints[1]}'),
          onPressed: () {
            onSelected(PlayerHandType.scissors, atackPoints[1]);
          },
        ),
        TextButton(
          child: Text('✋ ${atackPoints[2]}'),
          onPressed: () {
            onSelected(PlayerHandType.paper, atackPoints[2]);
          },
        ),
      ],
    );
  }
}

class PlayerStateRow extends HookConsumerWidget {
  final PlayerStateModel playerState;
  const PlayerStateRow({
    super.key,
    required this.playerState,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('HP: ${playerState.hp}'),
        //Text('ULT: ${playerState.ult}'),
        //Text('ULT残りターン: ${playerState.remainUltTurn}'),
      ],
    );
  }
}

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: MatchView(),
      ),
    ),
  );
}
