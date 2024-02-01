// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsLogModelImpl _$$StatisticsLogModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticsLogModelImpl(
      currentInputs: (json['currentInputs'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      currentEnemyInputsOneHot: (json['currentEnemyInputsOneHot']
              as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$$StatisticsLogModelImplToJson(
        _$StatisticsLogModelImpl instance) =>
    <String, dynamic>{
      'currentInputs': instance.currentInputs,
      'currentEnemyInputsOneHot': instance.currentEnemyInputsOneHot,
    };
