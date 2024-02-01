// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turn_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TurnInfoModelImpl _$$TurnInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$TurnInfoModelImpl(
      turn: json['turn'] as int,
      aiState:
          PlayerStateModel.fromJson(json['aiState'] as Map<String, dynamic>),
      userState:
          PlayerStateModel.fromJson(json['userState'] as Map<String, dynamic>),
      result: $enumDecode(_$ResultTypeEnumMap, json['result']),
      aiInputType: $enumDecode(_$PlayerHandTypeEnumMap, json['aiInputType']),
    );

Map<String, dynamic> _$$TurnInfoModelImplToJson(_$TurnInfoModelImpl instance) =>
    <String, dynamic>{
      'turn': instance.turn,
      'aiState': instance.aiState,
      'userState': instance.userState,
      'result': _$ResultTypeEnumMap[instance.result]!,
      'aiInputType': _$PlayerHandTypeEnumMap[instance.aiInputType]!,
    };

const _$ResultTypeEnumMap = {
  ResultType.win: 'win',
  ResultType.lose: 'lose',
  ResultType.draw: 'draw',
  ResultType.skip: 'skip',
};

const _$PlayerHandTypeEnumMap = {
  PlayerHandType.rock: 'rock',
  PlayerHandType.scissors: 'scissors',
  PlayerHandType.paper: 'paper',
  PlayerHandType.ult: 'ult',
};
