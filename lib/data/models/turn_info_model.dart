import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:janken/data/models/ai_input_model.dart';
import 'package:janken/data/models/player_state_model.dart';
import 'package:janken/domain/match/match_manager.dart';

part 'turn_info_model.freezed.dart';
part 'turn_info_model.g.dart';

@freezed
sealed class TurnInfoModel with _$TurnInfoModel {
  TurnInfoModel._();
  factory TurnInfoModel({
    required int turn,
    required PlayerStateModel aiState, // AIの状態
    required PlayerStateModel userState, // ユーザーの状態
    required ResultType result, // このターンの結果（演出用）
    required PlayerHandType aiInputType, //AIの手
  }) = _TurnInfoModel;
  factory TurnInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TurnInfoModelFromJson(json);
}
