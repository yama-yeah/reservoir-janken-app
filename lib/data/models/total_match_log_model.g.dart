// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_match_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TotalMatchLogModelImpl _$$TotalMatchLogModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TotalMatchLogModelImpl(
      totalGemeCount: json['totalGemeCount'] as int,
      totalWinCount: json['totalWinCount'] as int,
      totalTurnCount: json['totalTurnCount'] as int,
      totalUltCount: json['totalUltCount'] as int,
      totalDamageCount: json['totalDamageCount'] as int,
      totalDamageTakenCount: json['totalDamageTakenCount'] as int,
    );

Map<String, dynamic> _$$TotalMatchLogModelImplToJson(
        _$TotalMatchLogModelImpl instance) =>
    <String, dynamic>{
      'totalGemeCount': instance.totalGemeCount,
      'totalWinCount': instance.totalWinCount,
      'totalTurnCount': instance.totalTurnCount,
      'totalUltCount': instance.totalUltCount,
      'totalDamageCount': instance.totalDamageCount,
      'totalDamageTakenCount': instance.totalDamageTakenCount,
    };
