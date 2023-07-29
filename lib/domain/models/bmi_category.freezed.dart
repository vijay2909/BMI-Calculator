// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bmi_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BMICategory {
  double get bmi => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get bmiRange => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        underWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        normalWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        overWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        obesity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnderWeight value) underWeight,
    required TResult Function(_NormalWeight value) normalWeight,
    required TResult Function(_OverWeight value) overWeight,
    required TResult Function(_Obesity value) obesity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnderWeight value)? underWeight,
    TResult? Function(_NormalWeight value)? normalWeight,
    TResult? Function(_OverWeight value)? overWeight,
    TResult? Function(_Obesity value)? obesity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnderWeight value)? underWeight,
    TResult Function(_NormalWeight value)? normalWeight,
    TResult Function(_OverWeight value)? overWeight,
    TResult Function(_Obesity value)? obesity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BMICategoryCopyWith<BMICategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BMICategoryCopyWith<$Res> {
  factory $BMICategoryCopyWith(
          BMICategory value, $Res Function(BMICategory) then) =
      _$BMICategoryCopyWithImpl<$Res, BMICategory>;
  @useResult
  $Res call({double bmi, String status, String description, String bmiRange});
}

/// @nodoc
class _$BMICategoryCopyWithImpl<$Res, $Val extends BMICategory>
    implements $BMICategoryCopyWith<$Res> {
  _$BMICategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmi = null,
    Object? status = null,
    Object? description = null,
    Object? bmiRange = null,
  }) {
    return _then(_value.copyWith(
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bmiRange: null == bmiRange
          ? _value.bmiRange
          : bmiRange // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnderWeightCopyWith<$Res>
    implements $BMICategoryCopyWith<$Res> {
  factory _$$_UnderWeightCopyWith(
          _$_UnderWeight value, $Res Function(_$_UnderWeight) then) =
      __$$_UnderWeightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double bmi, String status, String description, String bmiRange});
}

/// @nodoc
class __$$_UnderWeightCopyWithImpl<$Res>
    extends _$BMICategoryCopyWithImpl<$Res, _$_UnderWeight>
    implements _$$_UnderWeightCopyWith<$Res> {
  __$$_UnderWeightCopyWithImpl(
      _$_UnderWeight _value, $Res Function(_$_UnderWeight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmi = null,
    Object? status = null,
    Object? description = null,
    Object? bmiRange = null,
  }) {
    return _then(_$_UnderWeight(
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bmiRange: null == bmiRange
          ? _value.bmiRange
          : bmiRange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnderWeight with DiagnosticableTreeMixin implements _UnderWeight {
  const _$_UnderWeight(
      {required this.bmi,
      this.status = "UnderWeight",
      this.description =
          "You are underweight. You may want to gain some weight.",
      this.bmiRange = "Below 18.5 kg/m2"});

  @override
  final double bmi;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String bmiRange;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BMICategory.underWeight(bmi: $bmi, status: $status, description: $description, bmiRange: $bmiRange)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BMICategory.underWeight'))
      ..add(DiagnosticsProperty('bmi', bmi))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('bmiRange', bmiRange));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnderWeight &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bmiRange, bmiRange) ||
                other.bmiRange == bmiRange));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bmi, status, description, bmiRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnderWeightCopyWith<_$_UnderWeight> get copyWith =>
      __$$_UnderWeightCopyWithImpl<_$_UnderWeight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        underWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        normalWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        overWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        obesity,
  }) {
    return underWeight(bmi, status, description, bmiRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
  }) {
    return underWeight?.call(bmi, status, description, bmiRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
    required TResult orElse(),
  }) {
    if (underWeight != null) {
      return underWeight(bmi, status, description, bmiRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnderWeight value) underWeight,
    required TResult Function(_NormalWeight value) normalWeight,
    required TResult Function(_OverWeight value) overWeight,
    required TResult Function(_Obesity value) obesity,
  }) {
    return underWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnderWeight value)? underWeight,
    TResult? Function(_NormalWeight value)? normalWeight,
    TResult? Function(_OverWeight value)? overWeight,
    TResult? Function(_Obesity value)? obesity,
  }) {
    return underWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnderWeight value)? underWeight,
    TResult Function(_NormalWeight value)? normalWeight,
    TResult Function(_OverWeight value)? overWeight,
    TResult Function(_Obesity value)? obesity,
    required TResult orElse(),
  }) {
    if (underWeight != null) {
      return underWeight(this);
    }
    return orElse();
  }
}

abstract class _UnderWeight implements BMICategory {
  const factory _UnderWeight(
      {required final double bmi,
      final String status,
      final String description,
      final String bmiRange}) = _$_UnderWeight;

  @override
  double get bmi;
  @override
  String get status;
  @override
  String get description;
  @override
  String get bmiRange;
  @override
  @JsonKey(ignore: true)
  _$$_UnderWeightCopyWith<_$_UnderWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NormalWeightCopyWith<$Res>
    implements $BMICategoryCopyWith<$Res> {
  factory _$$_NormalWeightCopyWith(
          _$_NormalWeight value, $Res Function(_$_NormalWeight) then) =
      __$$_NormalWeightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double bmi, String status, String description, String bmiRange});
}

/// @nodoc
class __$$_NormalWeightCopyWithImpl<$Res>
    extends _$BMICategoryCopyWithImpl<$Res, _$_NormalWeight>
    implements _$$_NormalWeightCopyWith<$Res> {
  __$$_NormalWeightCopyWithImpl(
      _$_NormalWeight _value, $Res Function(_$_NormalWeight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmi = null,
    Object? status = null,
    Object? description = null,
    Object? bmiRange = null,
  }) {
    return _then(_$_NormalWeight(
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bmiRange: null == bmiRange
          ? _value.bmiRange
          : bmiRange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NormalWeight with DiagnosticableTreeMixin implements _NormalWeight {
  const _$_NormalWeight(
      {required this.bmi,
      this.status = "NormalWeight",
      this.description = "You have a normal body weight. Good Job!",
      this.bmiRange = "18.5 - 24.9 kg/m2"});

  @override
  final double bmi;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String bmiRange;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BMICategory.normalWeight(bmi: $bmi, status: $status, description: $description, bmiRange: $bmiRange)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BMICategory.normalWeight'))
      ..add(DiagnosticsProperty('bmi', bmi))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('bmiRange', bmiRange));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NormalWeight &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bmiRange, bmiRange) ||
                other.bmiRange == bmiRange));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bmi, status, description, bmiRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NormalWeightCopyWith<_$_NormalWeight> get copyWith =>
      __$$_NormalWeightCopyWithImpl<_$_NormalWeight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        underWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        normalWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        overWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        obesity,
  }) {
    return normalWeight(bmi, status, description, bmiRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
  }) {
    return normalWeight?.call(bmi, status, description, bmiRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
    required TResult orElse(),
  }) {
    if (normalWeight != null) {
      return normalWeight(bmi, status, description, bmiRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnderWeight value) underWeight,
    required TResult Function(_NormalWeight value) normalWeight,
    required TResult Function(_OverWeight value) overWeight,
    required TResult Function(_Obesity value) obesity,
  }) {
    return normalWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnderWeight value)? underWeight,
    TResult? Function(_NormalWeight value)? normalWeight,
    TResult? Function(_OverWeight value)? overWeight,
    TResult? Function(_Obesity value)? obesity,
  }) {
    return normalWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnderWeight value)? underWeight,
    TResult Function(_NormalWeight value)? normalWeight,
    TResult Function(_OverWeight value)? overWeight,
    TResult Function(_Obesity value)? obesity,
    required TResult orElse(),
  }) {
    if (normalWeight != null) {
      return normalWeight(this);
    }
    return orElse();
  }
}

abstract class _NormalWeight implements BMICategory {
  const factory _NormalWeight(
      {required final double bmi,
      final String status,
      final String description,
      final String bmiRange}) = _$_NormalWeight;

  @override
  double get bmi;
  @override
  String get status;
  @override
  String get description;
  @override
  String get bmiRange;
  @override
  @JsonKey(ignore: true)
  _$$_NormalWeightCopyWith<_$_NormalWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OverWeightCopyWith<$Res>
    implements $BMICategoryCopyWith<$Res> {
  factory _$$_OverWeightCopyWith(
          _$_OverWeight value, $Res Function(_$_OverWeight) then) =
      __$$_OverWeightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double bmi, String status, String description, String bmiRange});
}

/// @nodoc
class __$$_OverWeightCopyWithImpl<$Res>
    extends _$BMICategoryCopyWithImpl<$Res, _$_OverWeight>
    implements _$$_OverWeightCopyWith<$Res> {
  __$$_OverWeightCopyWithImpl(
      _$_OverWeight _value, $Res Function(_$_OverWeight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmi = null,
    Object? status = null,
    Object? description = null,
    Object? bmiRange = null,
  }) {
    return _then(_$_OverWeight(
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bmiRange: null == bmiRange
          ? _value.bmiRange
          : bmiRange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OverWeight with DiagnosticableTreeMixin implements _OverWeight {
  const _$_OverWeight(
      {required this.bmi,
      this.status = "OverWeight",
      this.description =
          "You are overweight. You may want to lose some weight.",
      this.bmiRange = "25 - 29.9 kg/m2"});

  @override
  final double bmi;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String bmiRange;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BMICategory.overWeight(bmi: $bmi, status: $status, description: $description, bmiRange: $bmiRange)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BMICategory.overWeight'))
      ..add(DiagnosticsProperty('bmi', bmi))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('bmiRange', bmiRange));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OverWeight &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bmiRange, bmiRange) ||
                other.bmiRange == bmiRange));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bmi, status, description, bmiRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OverWeightCopyWith<_$_OverWeight> get copyWith =>
      __$$_OverWeightCopyWithImpl<_$_OverWeight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        underWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        normalWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        overWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        obesity,
  }) {
    return overWeight(bmi, status, description, bmiRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
  }) {
    return overWeight?.call(bmi, status, description, bmiRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
    required TResult orElse(),
  }) {
    if (overWeight != null) {
      return overWeight(bmi, status, description, bmiRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnderWeight value) underWeight,
    required TResult Function(_NormalWeight value) normalWeight,
    required TResult Function(_OverWeight value) overWeight,
    required TResult Function(_Obesity value) obesity,
  }) {
    return overWeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnderWeight value)? underWeight,
    TResult? Function(_NormalWeight value)? normalWeight,
    TResult? Function(_OverWeight value)? overWeight,
    TResult? Function(_Obesity value)? obesity,
  }) {
    return overWeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnderWeight value)? underWeight,
    TResult Function(_NormalWeight value)? normalWeight,
    TResult Function(_OverWeight value)? overWeight,
    TResult Function(_Obesity value)? obesity,
    required TResult orElse(),
  }) {
    if (overWeight != null) {
      return overWeight(this);
    }
    return orElse();
  }
}

abstract class _OverWeight implements BMICategory {
  const factory _OverWeight(
      {required final double bmi,
      final String status,
      final String description,
      final String bmiRange}) = _$_OverWeight;

  @override
  double get bmi;
  @override
  String get status;
  @override
  String get description;
  @override
  String get bmiRange;
  @override
  @JsonKey(ignore: true)
  _$$_OverWeightCopyWith<_$_OverWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ObesityCopyWith<$Res> implements $BMICategoryCopyWith<$Res> {
  factory _$$_ObesityCopyWith(
          _$_Obesity value, $Res Function(_$_Obesity) then) =
      __$$_ObesityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double bmi, String status, String description, String bmiRange});
}

/// @nodoc
class __$$_ObesityCopyWithImpl<$Res>
    extends _$BMICategoryCopyWithImpl<$Res, _$_Obesity>
    implements _$$_ObesityCopyWith<$Res> {
  __$$_ObesityCopyWithImpl(_$_Obesity _value, $Res Function(_$_Obesity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmi = null,
    Object? status = null,
    Object? description = null,
    Object? bmiRange = null,
  }) {
    return _then(_$_Obesity(
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      bmiRange: null == bmiRange
          ? _value.bmiRange
          : bmiRange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Obesity with DiagnosticableTreeMixin implements _Obesity {
  const _$_Obesity(
      {required this.bmi,
      this.status = "Obesity",
      this.description =
          "You are obese. It's important to take steps to improve your health.",
      this.bmiRange = "Above 30 kg/m2"});

  @override
  final double bmi;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String bmiRange;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BMICategory.obesity(bmi: $bmi, status: $status, description: $description, bmiRange: $bmiRange)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BMICategory.obesity'))
      ..add(DiagnosticsProperty('bmi', bmi))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('bmiRange', bmiRange));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Obesity &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bmiRange, bmiRange) ||
                other.bmiRange == bmiRange));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bmi, status, description, bmiRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObesityCopyWith<_$_Obesity> get copyWith =>
      __$$_ObesityCopyWithImpl<_$_Obesity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        underWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        normalWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        overWeight,
    required TResult Function(
            double bmi, String status, String description, String bmiRange)
        obesity,
  }) {
    return obesity(bmi, status, description, bmiRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult? Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
  }) {
    return obesity?.call(bmi, status, description, bmiRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        underWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        normalWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        overWeight,
    TResult Function(
            double bmi, String status, String description, String bmiRange)?
        obesity,
    required TResult orElse(),
  }) {
    if (obesity != null) {
      return obesity(bmi, status, description, bmiRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnderWeight value) underWeight,
    required TResult Function(_NormalWeight value) normalWeight,
    required TResult Function(_OverWeight value) overWeight,
    required TResult Function(_Obesity value) obesity,
  }) {
    return obesity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnderWeight value)? underWeight,
    TResult? Function(_NormalWeight value)? normalWeight,
    TResult? Function(_OverWeight value)? overWeight,
    TResult? Function(_Obesity value)? obesity,
  }) {
    return obesity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnderWeight value)? underWeight,
    TResult Function(_NormalWeight value)? normalWeight,
    TResult Function(_OverWeight value)? overWeight,
    TResult Function(_Obesity value)? obesity,
    required TResult orElse(),
  }) {
    if (obesity != null) {
      return obesity(this);
    }
    return orElse();
  }
}

abstract class _Obesity implements BMICategory {
  const factory _Obesity(
      {required final double bmi,
      final String status,
      final String description,
      final String bmiRange}) = _$_Obesity;

  @override
  double get bmi;
  @override
  String get status;
  @override
  String get description;
  @override
  String get bmiRange;
  @override
  @JsonKey(ignore: true)
  _$$_ObesityCopyWith<_$_Obesity> get copyWith =>
      throw _privateConstructorUsedError;
}
