// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adress_step_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressStepDataModel {
  String get address => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStepDataModelCopyWith<AddressStepDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStepDataModelCopyWith<$Res> {
  factory $AddressStepDataModelCopyWith(AddressStepDataModel value,
          $Res Function(AddressStepDataModel) then) =
      _$AddressStepDataModelCopyWithImpl<$Res, AddressStepDataModel>;
  @useResult
  $Res call({String address, String country, String city, String district});
}

/// @nodoc
class _$AddressStepDataModelCopyWithImpl<$Res,
        $Val extends AddressStepDataModel>
    implements $AddressStepDataModelCopyWith<$Res> {
  _$AddressStepDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? country = null,
    Object? city = null,
    Object? district = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressStepDataModelCopyWith<$Res>
    implements $AddressStepDataModelCopyWith<$Res> {
  factory _$$_AddressStepDataModelCopyWith(_$_AddressStepDataModel value,
          $Res Function(_$_AddressStepDataModel) then) =
      __$$_AddressStepDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String country, String city, String district});
}

/// @nodoc
class __$$_AddressStepDataModelCopyWithImpl<$Res>
    extends _$AddressStepDataModelCopyWithImpl<$Res, _$_AddressStepDataModel>
    implements _$$_AddressStepDataModelCopyWith<$Res> {
  __$$_AddressStepDataModelCopyWithImpl(_$_AddressStepDataModel _value,
      $Res Function(_$_AddressStepDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? country = null,
    Object? city = null,
    Object? district = null,
  }) {
    return _then(_$_AddressStepDataModel(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressStepDataModel
    with DiagnosticableTreeMixin
    implements _AddressStepDataModel {
  const _$_AddressStepDataModel(
      {required this.address,
      required this.country,
      required this.city,
      required this.district});

  @override
  final String address;
  @override
  final String country;
  @override
  final String city;
  @override
  final String district;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddressStepDataModel(address: $address, country: $country, city: $city, district: $district)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddressStepDataModel'))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('district', district));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressStepDataModel &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, country, city, district);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressStepDataModelCopyWith<_$_AddressStepDataModel> get copyWith =>
      __$$_AddressStepDataModelCopyWithImpl<_$_AddressStepDataModel>(
          this, _$identity);
}

abstract class _AddressStepDataModel implements AddressStepDataModel {
  const factory _AddressStepDataModel(
      {required final String address,
      required final String country,
      required final String city,
      required final String district}) = _$_AddressStepDataModel;

  @override
  String get address;
  @override
  String get country;
  @override
  String get city;
  @override
  String get district;
  @override
  @JsonKey(ignore: true)
  _$$_AddressStepDataModelCopyWith<_$_AddressStepDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
