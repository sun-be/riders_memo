// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'index_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IndexState {
  int get mainCount => throw _privateConstructorUsedError;
  int get subCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndexStateCopyWith<IndexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexStateCopyWith<$Res> {
  factory $IndexStateCopyWith(
          IndexState value, $Res Function(IndexState) then) =
      _$IndexStateCopyWithImpl<$Res>;
  $Res call({int mainCount, int subCount});
}

/// @nodoc
class _$IndexStateCopyWithImpl<$Res> implements $IndexStateCopyWith<$Res> {
  _$IndexStateCopyWithImpl(this._value, this._then);

  final IndexState _value;
  // ignore: unused_field
  final $Res Function(IndexState) _then;

  @override
  $Res call({
    Object? mainCount = freezed,
    Object? subCount = freezed,
  }) {
    return _then(_value.copyWith(
      mainCount: mainCount == freezed
          ? _value.mainCount
          : mainCount // ignore: cast_nullable_to_non_nullable
              as int,
      subCount: subCount == freezed
          ? _value.subCount
          : subCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_IndexStateCopyWith<$Res>
    implements $IndexStateCopyWith<$Res> {
  factory _$$_IndexStateCopyWith(
          _$_IndexState value, $Res Function(_$_IndexState) then) =
      __$$_IndexStateCopyWithImpl<$Res>;
  @override
  $Res call({int mainCount, int subCount});
}

/// @nodoc
class __$$_IndexStateCopyWithImpl<$Res> extends _$IndexStateCopyWithImpl<$Res>
    implements _$$_IndexStateCopyWith<$Res> {
  __$$_IndexStateCopyWithImpl(
      _$_IndexState _value, $Res Function(_$_IndexState) _then)
      : super(_value, (v) => _then(v as _$_IndexState));

  @override
  _$_IndexState get _value => super._value as _$_IndexState;

  @override
  $Res call({
    Object? mainCount = freezed,
    Object? subCount = freezed,
  }) {
    return _then(_$_IndexState(
      mainCount: mainCount == freezed
          ? _value.mainCount
          : mainCount // ignore: cast_nullable_to_non_nullable
              as int,
      subCount: subCount == freezed
          ? _value.subCount
          : subCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_IndexState with DiagnosticableTreeMixin implements _IndexState {
  const _$_IndexState({this.mainCount = 0, this.subCount = 0});

  @override
  @JsonKey()
  final int mainCount;
  @override
  @JsonKey()
  final int subCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IndexState(mainCount: $mainCount, subCount: $subCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IndexState'))
      ..add(DiagnosticsProperty('mainCount', mainCount))
      ..add(DiagnosticsProperty('subCount', subCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndexState &&
            const DeepCollectionEquality().equals(other.mainCount, mainCount) &&
            const DeepCollectionEquality().equals(other.subCount, subCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mainCount),
      const DeepCollectionEquality().hash(subCount));

  @JsonKey(ignore: true)
  @override
  _$$_IndexStateCopyWith<_$_IndexState> get copyWith =>
      __$$_IndexStateCopyWithImpl<_$_IndexState>(this, _$identity);
}

abstract class _IndexState implements IndexState {
  const factory _IndexState({final int mainCount, final int subCount}) =
      _$_IndexState;

  @override
  int get mainCount;
  @override
  int get subCount;
  @override
  @JsonKey(ignore: true)
  _$$_IndexStateCopyWith<_$_IndexState> get copyWith =>
      throw _privateConstructorUsedError;
}
