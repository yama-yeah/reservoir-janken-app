// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_view_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchViewDataModelImpl _$$MatchViewDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MatchViewDataModelImpl(
      turnInfo:
          TurnInfoModel.fromJson(json['turnInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MatchViewDataModelImplToJson(
        _$MatchViewDataModelImpl instance) =>
    <String, dynamic>{
      'turnInfo': instance.turnInfo,
    };
