// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerStateModelImpl _$$PlayerStateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlayerStateModelImpl(
      hp: json['hp'] as int,
      remainUltTurn: json['remainUltTurn'] as int,
      ult: (json['ult'] as num).toDouble(),
      hands: (json['hands'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$PlayerStateModelImplToJson(
        _$PlayerStateModelImpl instance) =>
    <String, dynamic>{
      'hp': instance.hp,
      'remainUltTurn': instance.remainUltTurn,
      'ult': instance.ult,
      'hands': instance.hands,
    };
