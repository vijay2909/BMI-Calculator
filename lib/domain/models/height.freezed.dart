// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'height.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Height {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) cm,
    required TResult Function(int foot, int inch) fi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? cm,
    TResult? Function(int foot, int inch)? fi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? cm,
    TResult Function(int foot, int inch)? fi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeightInCM value) cm,
    required TResult Function(HeightInFootInch value) fi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeightInCM value)? cm,
    TResult? Function(HeightInFootInch value)? fi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeightInCM value)? cm,
    TResult Function(HeightInFootInch value)? fi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeightCopyWith<$Res> {
  factory $HeightCopyWith(Height value, $Res Function(Height) then) =
      _$HeightCopyWithImpl<$Res, Height>;
}

/// @nodoc
class _$HeightCopyWithImpl<$Res, $Val extends Height>
    implements $HeightCopyWith<$Res> {
  _$HeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HeightInCMCopyWith<$Res> {
  factory _$$HeightInCMCopyWith(
          _$HeightInCM value, $Res Function(_$HeightInCM) then) =
      __$$HeightInCMCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$HeightInCMCopyWithImpl<$Res>
    extends _$HeightCopyWithImpl<$Res, _$HeightInCM>
    implements _$$HeightInCMCopyWith<$Res> {
  __$$HeightInCMCopyWithImpl(
      _$HeightInCM _value, $Res Function(_$HeightInCM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$HeightInCM(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HeightInCM with DiagnosticableTreeMixin implements HeightInCM {
  const _$HeightInCM({this.value = 167});

  @override
  @JsonKey()
  final int value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Height.cm(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Height.cm'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeightInCM &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeightInCMCopyWith<_$HeightInCM> get copyWith =>
      __$$HeightInCMCopyWithImpl<_$HeightInCM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) cm,
    required TResult Function(int foot, int inch) fi,
  }) {
    return cm(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? cm,
    TResult? Function(int foot, int inch)? fi,
  }) {
    return cm?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? cm,
    TResult Function(int foot, int inch)? fi,
    required TResult orElse(),
  }) {
    if (cm != null) {
      return cm(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeightInCM value) cm,
    required TResult Function(HeightInFootInch value) fi,
  }) {
    return cm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeightInCM value)? cm,
    TResult? Function(HeightInFootInch value)? fi,
  }) {
    return cm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeightInCM value)? cm,
    TResult Function(HeightInFootInch value)? fi,
    required TResult orElse(),
  }) {
    if (cm != null) {
      return cm(this);
    }
    return orElse();
  }
}

abstract class HeightInCM implements Height {
  const factory HeightInCM({final int value}) = _$HeightInCM;

  int get value;
  @JsonKey(ignore: true)
  _$$HeightInCMCopyWith<_$HeightInCM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HeightInFootInchCopyWith<$Res> {
  factory _$$HeightInFootInchCopyWith(
          _$HeightInFootInch value, $Res Function(_$HeightInFootInch) then) =
      __$$HeightInFootInchCopyWithImpl<$Res>;
  @useResult
  $Res call({int foot, int inch});
}

/// @nodoc
class __$$HeightInFootInchCopyWithImpl<$Res>
    extends _$HeightCopyWithImpl<$Res, _$HeightInFootInch>
    implements _$$HeightInFootInchCopyWith<$Res> {
  __$$HeightInFootInchCopyWithImpl(
      _$HeightInFootInch _value, $Res Function(_$HeightInFootInch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foot = null,
    Object? inch = null,
  }) {
    return _then(_$HeightInFootInch(
      foot: null == foot
          ? _value.foot
          : foot // ignore: cast_nullable_to_non_nullable
              as int,
      inch: null == inch
          ? _value.inch
          : inch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HeightInFootInch
    with DiagnosticableTreeMixin
    implements HeightInFootInch {
  const _$HeightInFootInch({this.foot = 5, this.inch = 6});

  @override
  @JsonKey()
  final int foot;
  @override
  @JsonKey()
  final int inch;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Height.fi(foot: $foot, inch: $inch)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Height.fi'))
      ..add(DiagnosticsProperty('foot', foot))
      ..add(DiagnosticsProperty('inch', inch));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeightInFootInch &&
            (identical(other.foot, foot) || other.foot == foot) &&
            (identical(other.inch, inch) || other.inch == inch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foot, inch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeightInFootInchCopyWith<_$HeightInFootInch> get copyWith =>
      __$$HeightInFootInchCopyWithImpl<_$HeightInFootInch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) cm,
    required TResult Function(int foot, int inch) fi,
  }) {
    return fi(foot, inch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? cm,
    TResult? Function(int foot, int inch)? fi,
  }) {
    return fi?.call(foot, inch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? cm,
    TResult Function(int foot, int inch)? fi,
    required TResult orElse(),
  }) {
    if (fi != null) {
      return fi(foot, inch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeightInCM value) cm,
    required TResult Function(HeightInFootInch value) fi,
  }) {
    return fi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeightInCM value)? cm,
    TResult? Function(HeightInFootInch value)? fi,
  }) {
    return fi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeightInCM value)? cm,
    TResult Function(HeightInFootInch value)? fi,
    required TResult orElse(),
  }) {
    if (fi != null) {
      return fi(this);
    }
    return orElse();
  }
}

abstract class HeightInFootInch implements Height {
  const factory HeightInFootInch({final int foot, final int inch}) =
      _$HeightInFootInch;

  int get foot;
  int get inch;
  @JsonKey(ignore: true)
  _$$HeightInFootInchCopyWith<_$HeightInFootInch> get copyWith =>
      throw _privateConstructorUsedError;
}
