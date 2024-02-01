import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'statistics_log_model.freezed.dart';
part 'statistics_log_model.g.dart';

@unfreezed
class StatisticsLogModel with _$StatisticsLogModel {
  factory StatisticsLogModel({
    // @Default(16) int maxCurrentTurn,
    // @Default(64) int logSurvivalTurn,
    required List<List<double>> currentInputs,
    required List<List<double>> currentEnemyInputsOneHot,
    // @Default([]) List<List<double>> savedVector,
    // @Default([]) List<int> savedMatricesRemainTurns,
  }) = _StatisticsLogModel;
  factory StatisticsLogModel.fromJson(Map<String, dynamic> json) =>
      _$StatisticsLogModelFromJson(json);
}
