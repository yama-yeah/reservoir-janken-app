import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_state_model.freezed.dart';
part 'player_state_model.g.dart';

@freezed
sealed class PlayerStateModel with _$PlayerStateModel {
  PlayerStateModel._();
  factory PlayerStateModel({
    required int hp,
    required int remainUltTurn,
    required double ult,
    required List<int> hands,
  }) = _PlayerStateModel;
  factory PlayerStateModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerStateModelFromJson(json);
}
