import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'total_match_log_model.freezed.dart';
part 'total_match_log_model.g.dart';

@freezed
class TotalMatchLogModel with _$TotalMatchLogModel {
  const factory TotalMatchLogModel({
    required int totalGemeCount,
    required int totalWinCount,
    required int totalTurnCount,
    required int totalUltCount,
    required int totalDamageCount,
    required int totalDamageTakenCount,
  }) = _TotalMatchLogModel;
  factory TotalMatchLogModel.fromJson(Map<String, dynamic> json) =>
      _$TotalMatchLogModelFromJson(json);
}
