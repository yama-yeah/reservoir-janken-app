// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerStateModel _$PlayerStateModelFromJson(Map<String, dynamic> json) {
  return _PlayerStateModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerStateModel {
  int get hp => throw _privateConstructorUsedError;
  int get remainUltTurn => throw _privateConstructorUsedError;
  double get ult => throw _privateConstructorUsedError;
  List<int> get hands => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerStateModelCopyWith<PlayerStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateModelCopyWith<$Res> {
  factory $PlayerStateModelCopyWith(
          PlayerStateModel value, $Res Function(PlayerStateModel) then) =
      _$PlayerStateModelCopyWithImpl<$Res, PlayerStateModel>;
  @useResult
  $Res call({int hp, int remainUltTurn, double ult, List<int> hands});
}

/// @nodoc
class _$PlayerStateModelCopyWithImpl<$Res, $Val extends PlayerStateModel>
    implements $PlayerStateModelCopyWith<$Res> {
  _$PlayerStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hp = null,
    Object? remainUltTurn = null,
    Object? ult = null,
    Object? hands = null,
  }) {
    return _then(_value.copyWith(
      hp: null == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as int,
      remainUltTurn: null == remainUltTurn
          ? _value.remainUltTurn
          : remainUltTurn // ignore: cast_nullable_to_non_nullable
              as int,
      ult: null == ult
          ? _value.ult
          : ult // ignore: cast_nullable_to_non_nullable
              as double,
      hands: null == hands
          ? _value.hands
          : hands // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerStateModelImplCopyWith<$Res>
    implements $PlayerStateModelCopyWith<$Res> {
  factory _$$PlayerStateModelImplCopyWith(_$PlayerStateModelImpl value,
          $Res Function(_$PlayerStateModelImpl) then) =
      __$$PlayerStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hp, int remainUltTurn, double ult, List<int> hands});
}

/// @nodoc
class __$$PlayerStateModelImplCopyWithImpl<$Res>
    extends _$PlayerStateModelCopyWithImpl<$Res, _$PlayerStateModelImpl>
    implements _$$PlayerStateModelImplCopyWith<$Res> {
  __$$PlayerStateModelImplCopyWithImpl(_$PlayerStateModelImpl _value,
      $Res Function(_$PlayerStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hp = null,
    Object? remainUltTurn = null,
    Object? ult = null,
    Object? hands = null,
  }) {
    return _then(_$PlayerStateModelImpl(
      hp: null == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as int,
      remainUltTurn: null == remainUltTurn
          ? _value.remainUltTurn
          : remainUltTurn // ignore: cast_nullable_to_non_nullable
              as int,
      ult: null == ult
          ? _value.ult
          : ult // ignore: cast_nullable_to_non_nullable
              as double,
      hands: null == hands
          ? _value._hands
          : hands // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerStateModelImpl extends _PlayerStateModel {
  _$PlayerStateModelImpl(
      {required this.hp,
      required this.remainUltTurn,
      required this.ult,
      required final List<int> hands})
      : _hands = hands,
        super._();

  factory _$PlayerStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerStateModelImplFromJson(json);

  @override
  final int hp;
  @override
  final int remainUltTurn;
  @override
  final double ult;
  final List<int> _hands;
  @override
  List<int> get hands {
    if (_hands is EqualUnmodifiableListView) return _hands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hands);
  }

  @override
  String toString() {
    return 'PlayerStateModel(hp: $hp, remainUltTurn: $remainUltTurn, ult: $ult, hands: $hands)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateModelImpl &&
            (identical(other.hp, hp) || other.hp == hp) &&
            (identical(other.remainUltTurn, remainUltTurn) ||
                other.remainUltTurn == remainUltTurn) &&
            (identical(other.ult, ult) || other.ult == ult) &&
            const DeepCollectionEquality().equals(other._hands, _hands));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hp, remainUltTurn, ult,
      const DeepCollectionEquality().hash(_hands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateModelImplCopyWith<_$PlayerStateModelImpl> get copyWith =>
      __$$PlayerStateModelImplCopyWithImpl<_$PlayerStateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerStateModelImplToJson(
      this,
    );
  }
}

abstract class _PlayerStateModel extends PlayerStateModel {
  factory _PlayerStateModel(
      {required final int hp,
      required final int remainUltTurn,
      required final double ult,
      required final List<int> hands}) = _$PlayerStateModelImpl;
  _PlayerStateModel._() : super._();

  factory _PlayerStateModel.fromJson(Map<String, dynamic> json) =
      _$PlayerStateModelImpl.fromJson;

  @override
  int get hp;
  @override
  int get remainUltTurn;
  @override
  double get ult;
  @override
  List<int> get hands;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStateModelImplCopyWith<_$PlayerStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
