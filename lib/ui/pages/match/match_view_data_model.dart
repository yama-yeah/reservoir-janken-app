import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:janken/data/models/turn_info_model.dart';
part 'match_view_data_model.freezed.dart';
part 'match_view_data_model.g.dart';

@freezed
class MatchViewDataModel with _$MatchViewDataModel {
  const factory MatchViewDataModel({
    required TurnInfoModel turnInfo,
  }) = _MatchViewDataModel;
  factory MatchViewDataModel.fromJson(Map<String, dynamic> json) =>
      _$MatchViewDataModelFromJson(json);
}
