// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_info_init_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetInfoInitParams {
  String? get country => throw _privateConstructorUsedError;
  int? get currencyUnitId => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetInfoInitParamsCopyWith<GetInfoInitParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInfoInitParamsCopyWith<$Res> {
  factory $GetInfoInitParamsCopyWith(
          GetInfoInitParams value, $Res Function(GetInfoInitParams) then) =
      _$GetInfoInitParamsCopyWithImpl<$Res, GetInfoInitParams>;
  @useResult
  $Res call(
      {String? country, int? currencyUnitId, String? city, String? district});
}

/// @nodoc
class _$GetInfoInitParamsCopyWithImpl<$Res, $Val extends GetInfoInitParams>
    implements $GetInfoInitParamsCopyWith<$Res> {
  _$GetInfoInitParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? currencyUnitId = freezed,
    Object? city = freezed,
    Object? district = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyUnitId: freezed == currencyUnitId
          ? _value.currencyUnitId
          : currencyUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetInfoInitParamsCopyWith<$Res>
    implements $GetInfoInitParamsCopyWith<$Res> {
  factory _$$_GetInfoInitParamsCopyWith(_$_GetInfoInitParams value,
          $Res Function(_$_GetInfoInitParams) then) =
      __$$_GetInfoInitParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? country, int? currencyUnitId, String? city, String? district});
}

/// @nodoc
class __$$_GetInfoInitParamsCopyWithImpl<$Res>
    extends _$GetInfoInitParamsCopyWithImpl<$Res, _$_GetInfoInitParams>
    implements _$$_GetInfoInitParamsCopyWith<$Res> {
  __$$_GetInfoInitParamsCopyWithImpl(
      _$_GetInfoInitParams _value, $Res Function(_$_GetInfoInitParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? currencyUnitId = freezed,
    Object? city = freezed,
    Object? district = freezed,
  }) {
    return _then(_$_GetInfoInitParams(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyUnitId: freezed == currencyUnitId
          ? _value.currencyUnitId
          : currencyUnitId // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetInfoInitParams
    with DiagnosticableTreeMixin
    implements _GetInfoInitParams {
  const _$_GetInfoInitParams(
      {this.country, this.currencyUnitId, this.city, this.district});

  @override
  final String? country;
  @override
  final int? currencyUnitId;
  @override
  final String? city;
  @override
  final String? district;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetInfoInitParams(country: $country, currencyUnitId: $currencyUnitId, city: $city, district: $district)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetInfoInitParams'))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('currencyUnitId', currencyUnitId))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('district', district));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetInfoInitParams &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.currencyUnitId, currencyUnitId) ||
                other.currencyUnitId == currencyUnitId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, country, currencyUnitId, city, district);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetInfoInitParamsCopyWith<_$_GetInfoInitParams> get copyWith =>
      __$$_GetInfoInitParamsCopyWithImpl<_$_GetInfoInitParams>(
          this, _$identity);
}

abstract class _GetInfoInitParams implements GetInfoInitParams {
  const factory _GetInfoInitParams(
      {final String? country,
      final int? currencyUnitId,
      final String? city,
      final String? district}) = _$_GetInfoInitParams;

  @override
  String? get country;
  @override
  int? get currencyUnitId;
  @override
  String? get city;
  @override
  String? get district;
  @override
  @JsonKey(ignore: true)
  _$$_GetInfoInitParamsCopyWith<_$_GetInfoInitParams> get copyWith =>
      throw _privateConstructorUsedError;
}
