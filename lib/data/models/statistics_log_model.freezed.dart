// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsLogModel _$StatisticsLogModelFromJson(Map<String, dynamic> json) {
  return _StatisticsLogModel.fromJson(json);
}

/// @nodoc
mixin _$StatisticsLogModel {
// @Default(16) int maxCurrentTurn,
// @Default(64) int logSurvivalTurn,
  List<List<double>> get currentInputs =>
      throw _privateConstructorUsedError; // @Default(16) int maxCurrentTurn,
// @Default(64) int logSurvivalTurn,
  set currentInputs(List<List<double>> value) =>
      throw _privateConstructorUsedError;
  List<List<double>> get currentEnemyInputsOneHot =>
      throw _privateConstructorUsedError;
  set currentEnemyInputsOneHot(List<List<double>> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsLogModelCopyWith<StatisticsLogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsLogModelCopyWith<$Res> {
  factory $StatisticsLogModelCopyWith(
          StatisticsLogModel value, $Res Function(StatisticsLogModel) then) =
      _$StatisticsLogModelCopyWithImpl<$Res, StatisticsLogModel>;
  @useResult
  $Res call(
      {List<List<double>> currentInputs,
      List<List<double>> currentEnemyInputsOneHot});
}

/// @nodoc
class _$StatisticsLogModelCopyWithImpl<$Res, $Val extends StatisticsLogModel>
    implements $StatisticsLogModelCopyWith<$Res> {
  _$StatisticsLogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentInputs = null,
    Object? currentEnemyInputsOneHot = null,
  }) {
    return _then(_value.copyWith(
      currentInputs: null == currentInputs
          ? _value.currentInputs
          : currentInputs // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      currentEnemyInputsOneHot: null == currentEnemyInputsOneHot
          ? _value.currentEnemyInputsOneHot
          : currentEnemyInputsOneHot // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticsLogModelImplCopyWith<$Res>
    implements $StatisticsLogModelCopyWith<$Res> {
  factory _$$StatisticsLogModelImplCopyWith(_$StatisticsLogModelImpl value,
          $Res Function(_$StatisticsLogModelImpl) then) =
      __$$StatisticsLogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<List<double>> currentInputs,
      List<List<double>> currentEnemyInputsOneHot});
}

/// @nodoc
class __$$StatisticsLogModelImplCopyWithImpl<$Res>
    extends _$StatisticsLogModelCopyWithImpl<$Res, _$StatisticsLogModelImpl>
    implements _$$StatisticsLogModelImplCopyWith<$Res> {
  __$$StatisticsLogModelImplCopyWithImpl(_$StatisticsLogModelImpl _value,
      $Res Function(_$StatisticsLogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentInputs = null,
    Object? currentEnemyInputsOneHot = null,
  }) {
    return _then(_$StatisticsLogModelImpl(
      currentInputs: null == currentInputs
          ? _value.currentInputs
          : currentInputs // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      currentEnemyInputsOneHot: null == currentEnemyInputsOneHot
          ? _value.currentEnemyInputsOneHot
          : currentEnemyInputsOneHot // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsLogModelImpl
    with DiagnosticableTreeMixin
    implements _StatisticsLogModel {
  _$StatisticsLogModelImpl(
      {required this.currentInputs, required this.currentEnemyInputsOneHot});

  factory _$StatisticsLogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsLogModelImplFromJson(json);

// @Default(16) int maxCurrentTurn,
// @Default(64) int logSurvivalTurn,
  @override
  List<List<double>> currentInputs;
  @override
  List<List<double>> currentEnemyInputsOneHot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatisticsLogModel(currentInputs: $currentInputs, currentEnemyInputsOneHot: $currentEnemyInputsOneHot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatisticsLogModel'))
      ..add(DiagnosticsProperty('currentInputs', currentInputs))
      ..add(DiagnosticsProperty(
          'currentEnemyInputsOneHot', currentEnemyInputsOneHot));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsLogModelImplCopyWith<_$StatisticsLogModelImpl> get copyWith =>
      __$$StatisticsLogModelImplCopyWithImpl<_$StatisticsLogModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsLogModelImplToJson(
      this,
    );
  }
}

abstract class _StatisticsLogModel implements StatisticsLogModel {
  factory _StatisticsLogModel(
          {required List<List<double>> currentInputs,
          required List<List<double>> currentEnemyInputsOneHot}) =
      _$StatisticsLogModelImpl;

  factory _StatisticsLogModel.fromJson(Map<String, dynamic> json) =
      _$StatisticsLogModelImpl.fromJson;

  @override // @Default(16) int maxCurrentTurn,
// @Default(64) int logSurvivalTurn,
  List<List<double>> get currentInputs; // @Default(16) int maxCurrentTurn,
// @Default(64) int logSurvivalTurn,
  set currentInputs(List<List<double>> value);
  @override
  List<List<double>> get currentEnemyInputsOneHot;
  set currentEnemyInputsOneHot(List<List<double>> value);
  @override
  @JsonKey(ignore: true)
  _$$StatisticsLogModelImplCopyWith<_$StatisticsLogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
