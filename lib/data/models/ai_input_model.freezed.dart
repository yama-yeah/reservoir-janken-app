// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AiInputModel _$AiInputModelFromJson(Map<String, dynamic> json) {
  return _AiInputModel.fromJson(json);
}

/// @nodoc
mixin _$AiInputModel {
  int get maxTurn => throw _privateConstructorUsedError;
  set maxTurn(int value) => throw _privateConstructorUsedError;
  List<List<double>> get inputs => throw _privateConstructorUsedError;
  set inputs(List<List<double>> value) => throw _privateConstructorUsedError;
  List<List<double>> get outputs => throw _privateConstructorUsedError;
  set outputs(List<List<double>> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiInputModelCopyWith<AiInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiInputModelCopyWith<$Res> {
  factory $AiInputModelCopyWith(
          AiInputModel value, $Res Function(AiInputModel) then) =
      _$AiInputModelCopyWithImpl<$Res, AiInputModel>;
  @useResult
  $Res call(
      {int maxTurn, List<List<double>> inputs, List<List<double>> outputs});
}

/// @nodoc
class _$AiInputModelCopyWithImpl<$Res, $Val extends AiInputModel>
    implements $AiInputModelCopyWith<$Res> {
  _$AiInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTurn = null,
    Object? inputs = null,
    Object? outputs = null,
  }) {
    return _then(_value.copyWith(
      maxTurn: null == maxTurn
          ? _value.maxTurn
          : maxTurn // ignore: cast_nullable_to_non_nullable
              as int,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      outputs: null == outputs
          ? _value.outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiInputModelImplCopyWith<$Res>
    implements $AiInputModelCopyWith<$Res> {
  factory _$$AiInputModelImplCopyWith(
          _$AiInputModelImpl value, $Res Function(_$AiInputModelImpl) then) =
      __$$AiInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int maxTurn, List<List<double>> inputs, List<List<double>> outputs});
}

/// @nodoc
class __$$AiInputModelImplCopyWithImpl<$Res>
    extends _$AiInputModelCopyWithImpl<$Res, _$AiInputModelImpl>
    implements _$$AiInputModelImplCopyWith<$Res> {
  __$$AiInputModelImplCopyWithImpl(
      _$AiInputModelImpl _value, $Res Function(_$AiInputModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxTurn = null,
    Object? inputs = null,
    Object? outputs = null,
  }) {
    return _then(_$AiInputModelImpl(
      maxTurn: null == maxTurn
          ? _value.maxTurn
          : maxTurn // ignore: cast_nullable_to_non_nullable
              as int,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      outputs: null == outputs
          ? _value.outputs
          : outputs // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiInputModelImpl with DiagnosticableTreeMixin implements _AiInputModel {
  _$AiInputModelImpl(
      {required this.maxTurn, required this.inputs, required this.outputs});

  factory _$AiInputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiInputModelImplFromJson(json);

  @override
  int maxTurn;
  @override
  List<List<double>> inputs;
  @override
  List<List<double>> outputs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AiInputModel(maxTurn: $maxTurn, inputs: $inputs, outputs: $outputs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AiInputModel'))
      ..add(DiagnosticsProperty('maxTurn', maxTurn))
      ..add(DiagnosticsProperty('inputs', inputs))
      ..add(DiagnosticsProperty('outputs', outputs));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiInputModelImplCopyWith<_$AiInputModelImpl> get copyWith =>
      __$$AiInputModelImplCopyWithImpl<_$AiInputModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiInputModelImplToJson(
      this,
    );
  }
}

abstract class _AiInputModel implements AiInputModel {
  factory _AiInputModel(
      {required int maxTurn,
      required List<List<double>> inputs,
      required List<List<double>> outputs}) = _$AiInputModelImpl;

  factory _AiInputModel.fromJson(Map<String, dynamic> json) =
      _$AiInputModelImpl.fromJson;

  @override
  int get maxTurn;
  set maxTurn(int value);
  @override
  List<List<double>> get inputs;
  set inputs(List<List<double>> value);
  @override
  List<List<double>> get outputs;
  set outputs(List<List<double>> value);
  @override
  @JsonKey(ignore: true)
  _$$AiInputModelImplCopyWith<_$AiInputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
