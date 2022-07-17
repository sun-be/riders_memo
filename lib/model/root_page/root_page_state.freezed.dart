// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'root_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RootPageState {
  int get mainCount => throw _privateConstructorUsedError;
  int get subCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootPageStateCopyWith<RootPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootPageStateCopyWith<$Res> {
  factory $RootPageStateCopyWith(
          RootPageState value, $Res Function(RootPageState) then) =
      _$RootPageStateCopyWithImpl<$Res>;
  $Res call({int mainCount, int subCount});
}

/// @nodoc
class _$RootPageStateCopyWithImpl<$Res>
    implements $RootPageStateCopyWith<$Res> {
  _$RootPageStateCopyWithImpl(this._value, this._then);

  final RootPageState _value;
  // ignore: unused_field
  final $Res Function(RootPageState) _then;

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
abstract class _$$_RootPageStateCopyWith<$Res>
    implements $RootPageStateCopyWith<$Res> {
  factory _$$_RootPageStateCopyWith(
          _$_RootPageState value, $Res Function(_$_RootPageState) then) =
      __$$_RootPageStateCopyWithImpl<$Res>;
  @override
  $Res call({int mainCount, int subCount});
}

/// @nodoc
class __$$_RootPageStateCopyWithImpl<$Res>
    extends _$RootPageStateCopyWithImpl<$Res>
    implements _$$_RootPageStateCopyWith<$Res> {
  __$$_RootPageStateCopyWithImpl(
      _$_RootPageState _value, $Res Function(_$_RootPageState) _then)
      : super(_value, (v) => _then(v as _$_RootPageState));

  @override
  _$_RootPageState get _value => super._value as _$_RootPageState;

  @override
  $Res call({
    Object? mainCount = freezed,
    Object? subCount = freezed,
  }) {
    return _then(_$_RootPageState(
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

class _$_RootPageState with DiagnosticableTreeMixin implements _RootPageState {
  const _$_RootPageState({this.mainCount = 0, this.subCount = 0});

  @override
  @JsonKey()
  final int mainCount;
  @override
  @JsonKey()
  final int subCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RootPageState(mainCount: $mainCount, subCount: $subCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RootPageState'))
      ..add(DiagnosticsProperty('mainCount', mainCount))
      ..add(DiagnosticsProperty('subCount', subCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RootPageState &&
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
  _$$_RootPageStateCopyWith<_$_RootPageState> get copyWith =>
      __$$_RootPageStateCopyWithImpl<_$_RootPageState>(this, _$identity);
}

abstract class _RootPageState implements RootPageState {
  const factory _RootPageState({final int mainCount, final int subCount}) =
      _$_RootPageState;

  @override
  int get mainCount;
  @override
  int get subCount;
  @override
  @JsonKey(ignore: true)
  _$$_RootPageStateCopyWith<_$_RootPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
