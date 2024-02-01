// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiInputModelImpl _$$AiInputModelImplFromJson(Map<String, dynamic> json) =>
    _$AiInputModelImpl(
      maxTurn: json['maxTurn'] as int,
      inputs: (json['inputs'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      outputs: (json['outputs'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$$AiInputModelImplToJson(_$AiInputModelImpl instance) =>
    <String, dynamic>{
      'maxTurn': instance.maxTurn,
      'inputs': instance.inputs,
      'outputs': instance.outputs,
    };
