// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'turn_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TurnInfoModel _$TurnInfoModelFromJson(Map<String, dynamic> json) {
  return _TurnInfoModel.fromJson(json);
}

/// @nodoc
mixin _$TurnInfoModel {
  int get turn => throw _privateConstructorUsedError;
  PlayerStateModel get aiState => throw _privateConstructorUsedError; // AIの状態
  PlayerStateModel get userState =>
      throw _privateConstructorUsedError; // ユーザーの状態
  ResultType get result => throw _privateConstructorUsedError; // このターンの結果（演出用）
  PlayerHandType get aiInputType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TurnInfoModelCopyWith<TurnInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TurnInfoModelCopyWith<$Res> {
  factory $TurnInfoModelCopyWith(
          TurnInfoModel value, $Res Function(TurnInfoModel) then) =
      _$TurnInfoModelCopyWithImpl<$Res, TurnInfoModel>;
  @useResult
  $Res call(
      {int turn,
      PlayerStateModel aiState,
      PlayerStateModel userState,
      ResultType result,
      PlayerHandType aiInputType});

  $PlayerStateModelCopyWith<$Res> get aiState;
  $PlayerStateModelCopyWith<$Res> get userState;
}

/// @nodoc
class _$TurnInfoModelCopyWithImpl<$Res, $Val extends TurnInfoModel>
    implements $TurnInfoModelCopyWith<$Res> {
  _$TurnInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turn = null,
    Object? aiState = null,
    Object? userState = null,
    Object? result = null,
    Object? aiInputType = null,
  }) {
    return _then(_value.copyWith(
      turn: null == turn
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as int,
      aiState: null == aiState
          ? _value.aiState
          : aiState // ignore: cast_nullable_to_non_nullable
              as PlayerStateModel,
      userState: null == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as PlayerStateModel,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultType,
      aiInputType: null == aiInputType
          ? _value.aiInputType
          : aiInputType // ignore: cast_nullable_to_non_nullable
              as PlayerHandType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerStateModelCopyWith<$Res> get aiState {
    return $PlayerStateModelCopyWith<$Res>(_value.aiState, (value) {
      return _then(_value.copyWith(aiState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerStateModelCopyWith<$Res> get userState {
    return $PlayerStateModelCopyWith<$Res>(_value.userState, (value) {
      return _then(_value.copyWith(userState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TurnInfoModelImplCopyWith<$Res>
    implements $TurnInfoModelCopyWith<$Res> {
  factory _$$TurnInfoModelImplCopyWith(
          _$TurnInfoModelImpl value, $Res Function(_$TurnInfoModelImpl) then) =
      __$$TurnInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int turn,
      PlayerStateModel aiState,
      PlayerStateModel userState,
      ResultType result,
      PlayerHandType aiInputType});

  @override
  $PlayerStateModelCopyWith<$Res> get aiState;
  @override
  $PlayerStateModelCopyWith<$Res> get userState;
}

/// @nodoc
class __$$TurnInfoModelImplCopyWithImpl<$Res>
    extends _$TurnInfoModelCopyWithImpl<$Res, _$TurnInfoModelImpl>
    implements _$$TurnInfoModelImplCopyWith<$Res> {
  __$$TurnInfoModelImplCopyWithImpl(
      _$TurnInfoModelImpl _value, $Res Function(_$TurnInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turn = null,
    Object? aiState = null,
    Object? userState = null,
    Object? result = null,
    Object? aiInputType = null,
  }) {
    return _then(_$TurnInfoModelImpl(
      turn: null == turn
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as int,
      aiState: null == aiState
          ? _value.aiState
          : aiState // ignore: cast_nullable_to_non_nullable
              as PlayerStateModel,
      userState: null == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as PlayerStateModel,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultType,
      aiInputType: null == aiInputType
          ? _value.aiInputType
          : aiInputType // ignore: cast_nullable_to_non_nullable
              as PlayerHandType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TurnInfoModelImpl extends _TurnInfoModel {
  _$TurnInfoModelImpl(
      {required this.turn,
      required this.aiState,
      required this.userState,
      required this.result,
      required this.aiInputType})
      : super._();

  factory _$TurnInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TurnInfoModelImplFromJson(json);

  @override
  final int turn;
  @override
  final PlayerStateModel aiState;
// AIの状態
  @override
  final PlayerStateModel userState;
// ユーザーの状態
  @override
  final ResultType result;
// このターンの結果（演出用）
  @override
  final PlayerHandType aiInputType;

  @override
  String toString() {
    return 'TurnInfoModel(turn: $turn, aiState: $aiState, userState: $userState, result: $result, aiInputType: $aiInputType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TurnInfoModelImpl &&
            (identical(other.turn, turn) || other.turn == turn) &&
            (identical(other.aiState, aiState) || other.aiState == aiState) &&
            (identical(other.userState, userState) ||
                other.userState == userState) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.aiInputType, aiInputType) ||
                other.aiInputType == aiInputType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, turn, aiState, userState, result, aiInputType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TurnInfoModelImplCopyWith<_$TurnInfoModelImpl> get copyWith =>
      __$$TurnInfoModelImplCopyWithImpl<_$TurnInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TurnInfoModelImplToJson(
      this,
    );
  }
}

abstract class _TurnInfoModel extends TurnInfoModel {
  factory _TurnInfoModel(
      {required final int turn,
      required final PlayerStateModel aiState,
      required final PlayerStateModel userState,
      required final ResultType result,
      required final PlayerHandType aiInputType}) = _$TurnInfoModelImpl;
  _TurnInfoModel._() : super._();

  factory _TurnInfoModel.fromJson(Map<String, dynamic> json) =
      _$TurnInfoModelImpl.fromJson;

  @override
  int get turn;
  @override
  PlayerStateModel get aiState;
  @override // AIの状態
  PlayerStateModel get userState;
  @override // ユーザーの状態
  ResultType get result;
  @override // このターンの結果（演出用）
  PlayerHandType get aiInputType;
  @override
  @JsonKey(ignore: true)
  _$$TurnInfoModelImplCopyWith<_$TurnInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
