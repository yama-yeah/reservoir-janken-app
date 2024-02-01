// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_view_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchViewDataModel _$MatchViewDataModelFromJson(Map<String, dynamic> json) {
  return _MatchViewDataModel.fromJson(json);
}

/// @nodoc
mixin _$MatchViewDataModel {
  TurnInfoModel get turnInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchViewDataModelCopyWith<MatchViewDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchViewDataModelCopyWith<$Res> {
  factory $MatchViewDataModelCopyWith(
          MatchViewDataModel value, $Res Function(MatchViewDataModel) then) =
      _$MatchViewDataModelCopyWithImpl<$Res, MatchViewDataModel>;
  @useResult
  $Res call({TurnInfoModel turnInfo});

  $TurnInfoModelCopyWith<$Res> get turnInfo;
}

/// @nodoc
class _$MatchViewDataModelCopyWithImpl<$Res, $Val extends MatchViewDataModel>
    implements $MatchViewDataModelCopyWith<$Res> {
  _$MatchViewDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turnInfo = null,
  }) {
    return _then(_value.copyWith(
      turnInfo: null == turnInfo
          ? _value.turnInfo
          : turnInfo // ignore: cast_nullable_to_non_nullable
              as TurnInfoModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TurnInfoModelCopyWith<$Res> get turnInfo {
    return $TurnInfoModelCopyWith<$Res>(_value.turnInfo, (value) {
      return _then(_value.copyWith(turnInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchViewDataModelImplCopyWith<$Res>
    implements $MatchViewDataModelCopyWith<$Res> {
  factory _$$MatchViewDataModelImplCopyWith(_$MatchViewDataModelImpl value,
          $Res Function(_$MatchViewDataModelImpl) then) =
      __$$MatchViewDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TurnInfoModel turnInfo});

  @override
  $TurnInfoModelCopyWith<$Res> get turnInfo;
}

/// @nodoc
class __$$MatchViewDataModelImplCopyWithImpl<$Res>
    extends _$MatchViewDataModelCopyWithImpl<$Res, _$MatchViewDataModelImpl>
    implements _$$MatchViewDataModelImplCopyWith<$Res> {
  __$$MatchViewDataModelImplCopyWithImpl(_$MatchViewDataModelImpl _value,
      $Res Function(_$MatchViewDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turnInfo = null,
  }) {
    return _then(_$MatchViewDataModelImpl(
      turnInfo: null == turnInfo
          ? _value.turnInfo
          : turnInfo // ignore: cast_nullable_to_non_nullable
              as TurnInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchViewDataModelImpl implements _MatchViewDataModel {
  const _$MatchViewDataModelImpl({required this.turnInfo});

  factory _$MatchViewDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchViewDataModelImplFromJson(json);

  @override
  final TurnInfoModel turnInfo;

  @override
  String toString() {
    return 'MatchViewDataModel(turnInfo: $turnInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchViewDataModelImpl &&
            (identical(other.turnInfo, turnInfo) ||
                other.turnInfo == turnInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, turnInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchViewDataModelImplCopyWith<_$MatchViewDataModelImpl> get copyWith =>
      __$$MatchViewDataModelImplCopyWithImpl<_$MatchViewDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchViewDataModelImplToJson(
      this,
    );
  }
}

abstract class _MatchViewDataModel implements MatchViewDataModel {
  const factory _MatchViewDataModel({required final TurnInfoModel turnInfo}) =
      _$MatchViewDataModelImpl;

  factory _MatchViewDataModel.fromJson(Map<String, dynamic> json) =
      _$MatchViewDataModelImpl.fromJson;

  @override
  TurnInfoModel get turnInfo;
  @override
  @JsonKey(ignore: true)
  _$$MatchViewDataModelImplCopyWith<_$MatchViewDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
