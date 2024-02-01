import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'ai_input_model.freezed.dart';
part 'ai_input_model.g.dart';

@unfreezed
class AiInputModel with _$AiInputModel {
  factory AiInputModel({
    required int maxTurn,
    required List<List<double>> inputs,
    required List<List<double>> outputs,
  }) = _AiInputModel;
  factory AiInputModel.fromJson(Map<String, dynamic> json) =>
      _$AiInputModelFromJson(json);
}
