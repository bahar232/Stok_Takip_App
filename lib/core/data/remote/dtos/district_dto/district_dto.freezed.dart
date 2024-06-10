// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DistrictDto _$DistrictDtoFromJson(Map<String, dynamic> json) {
  return _DistrictDto.fromJson(json);
}

/// @nodoc
mixin _$DistrictDto {
  int get id => throw _privateConstructorUsedError;
  String get ilceAdi => throw _privateConstructorUsedError;
  String get ilceKodu => throw _privateConstructorUsedError;
  String get ilPlakaKodu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictDtoCopyWith<DistrictDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictDtoCopyWith<$Res> {
  factory $DistrictDtoCopyWith(
          DistrictDto value, $Res Function(DistrictDto) then) =
      _$DistrictDtoCopyWithImpl<$Res, DistrictDto>;
  @useResult
  $Res call({int id, String ilceAdi, String ilceKodu, String ilPlakaKodu});
}

/// @nodoc
class _$DistrictDtoCopyWithImpl<$Res, $Val extends DistrictDto>
    implements $DistrictDtoCopyWith<$Res> {
  _$DistrictDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ilceAdi = null,
    Object? ilceKodu = null,
    Object? ilPlakaKodu = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ilceAdi: null == ilceAdi
          ? _value.ilceAdi
          : ilceAdi // ignore: cast_nullable_to_non_nullable
              as String,
      ilceKodu: null == ilceKodu
          ? _value.ilceKodu
          : ilceKodu // ignore: cast_nullable_to_non_nullable
              as String,
      ilPlakaKodu: null == ilPlakaKodu
          ? _value.ilPlakaKodu
          : ilPlakaKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DistrictDtoCopyWith<$Res>
    implements $DistrictDtoCopyWith<$Res> {
  factory _$$_DistrictDtoCopyWith(
          _$_DistrictDto value, $Res Function(_$_DistrictDto) then) =
      __$$_DistrictDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String ilceAdi, String ilceKodu, String ilPlakaKodu});
}

/// @nodoc
class __$$_DistrictDtoCopyWithImpl<$Res>
    extends _$DistrictDtoCopyWithImpl<$Res, _$_DistrictDto>
    implements _$$_DistrictDtoCopyWith<$Res> {
  __$$_DistrictDtoCopyWithImpl(
      _$_DistrictDto _value, $Res Function(_$_DistrictDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ilceAdi = null,
    Object? ilceKodu = null,
    Object? ilPlakaKodu = null,
  }) {
    return _then(_$_DistrictDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ilceAdi: null == ilceAdi
          ? _value.ilceAdi
          : ilceAdi // ignore: cast_nullable_to_non_nullable
              as String,
      ilceKodu: null == ilceKodu
          ? _value.ilceKodu
          : ilceKodu // ignore: cast_nullable_to_non_nullable
              as String,
      ilPlakaKodu: null == ilPlakaKodu
          ? _value.ilPlakaKodu
          : ilPlakaKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DistrictDto with DiagnosticableTreeMixin implements _DistrictDto {
  const _$_DistrictDto(
      {required this.id,
      required this.ilceAdi,
      required this.ilceKodu,
      required this.ilPlakaKodu});

  factory _$_DistrictDto.fromJson(Map<String, dynamic> json) =>
      _$$_DistrictDtoFromJson(json);

  @override
  final int id;
  @override
  final String ilceAdi;
  @override
  final String ilceKodu;
  @override
  final String ilPlakaKodu;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DistrictDto(id: $id, ilceAdi: $ilceAdi, ilceKodu: $ilceKodu, ilPlakaKodu: $ilPlakaKodu)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DistrictDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('ilceAdi', ilceAdi))
      ..add(DiagnosticsProperty('ilceKodu', ilceKodu))
      ..add(DiagnosticsProperty('ilPlakaKodu', ilPlakaKodu));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DistrictDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ilceAdi, ilceAdi) || other.ilceAdi == ilceAdi) &&
            (identical(other.ilceKodu, ilceKodu) ||
                other.ilceKodu == ilceKodu) &&
            (identical(other.ilPlakaKodu, ilPlakaKodu) ||
                other.ilPlakaKodu == ilPlakaKodu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, ilceAdi, ilceKodu, ilPlakaKodu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DistrictDtoCopyWith<_$_DistrictDto> get copyWith =>
      __$$_DistrictDtoCopyWithImpl<_$_DistrictDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistrictDtoToJson(
      this,
    );
  }
}

abstract class _DistrictDto implements DistrictDto {
  const factory _DistrictDto(
      {required final int id,
      required final String ilceAdi,
      required final String ilceKodu,
      required final String ilPlakaKodu}) = _$_DistrictDto;

  factory _DistrictDto.fromJson(Map<String, dynamic> json) =
      _$_DistrictDto.fromJson;

  @override
  int get id;
  @override
  String get ilceAdi;
  @override
  String get ilceKodu;
  @override
  String get ilPlakaKodu;
  @override
  @JsonKey(ignore: true)
  _$$_DistrictDtoCopyWith<_$_DistrictDto> get copyWith =>
      throw _privateConstructorUsedError;
}
