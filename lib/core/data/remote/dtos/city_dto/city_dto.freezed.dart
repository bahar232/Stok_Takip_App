// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityDto _$CityDtoFromJson(Map<String, dynamic> json) {
  return _CityDto.fromJson(json);
}

/// @nodoc
mixin _$CityDto {
  int get sehirId => throw _privateConstructorUsedError;
  String get sehirAdi => throw _privateConstructorUsedError;
  int? get plakaNo => throw _privateConstructorUsedError;
  int? get telefonKodu => throw _privateConstructorUsedError;
  String get ulkeKodu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityDtoCopyWith<CityDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityDtoCopyWith<$Res> {
  factory $CityDtoCopyWith(CityDto value, $Res Function(CityDto) then) =
      _$CityDtoCopyWithImpl<$Res, CityDto>;
  @useResult
  $Res call(
      {int sehirId,
      String sehirAdi,
      int? plakaNo,
      int? telefonKodu,
      String ulkeKodu});
}

/// @nodoc
class _$CityDtoCopyWithImpl<$Res, $Val extends CityDto>
    implements $CityDtoCopyWith<$Res> {
  _$CityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sehirId = null,
    Object? sehirAdi = null,
    Object? plakaNo = freezed,
    Object? telefonKodu = freezed,
    Object? ulkeKodu = null,
  }) {
    return _then(_value.copyWith(
      sehirId: null == sehirId
          ? _value.sehirId
          : sehirId // ignore: cast_nullable_to_non_nullable
              as int,
      sehirAdi: null == sehirAdi
          ? _value.sehirAdi
          : sehirAdi // ignore: cast_nullable_to_non_nullable
              as String,
      plakaNo: freezed == plakaNo
          ? _value.plakaNo
          : plakaNo // ignore: cast_nullable_to_non_nullable
              as int?,
      telefonKodu: freezed == telefonKodu
          ? _value.telefonKodu
          : telefonKodu // ignore: cast_nullable_to_non_nullable
              as int?,
      ulkeKodu: null == ulkeKodu
          ? _value.ulkeKodu
          : ulkeKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CityDtoCopyWith<$Res> implements $CityDtoCopyWith<$Res> {
  factory _$$_CityDtoCopyWith(
          _$_CityDto value, $Res Function(_$_CityDto) then) =
      __$$_CityDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sehirId,
      String sehirAdi,
      int? plakaNo,
      int? telefonKodu,
      String ulkeKodu});
}

/// @nodoc
class __$$_CityDtoCopyWithImpl<$Res>
    extends _$CityDtoCopyWithImpl<$Res, _$_CityDto>
    implements _$$_CityDtoCopyWith<$Res> {
  __$$_CityDtoCopyWithImpl(_$_CityDto _value, $Res Function(_$_CityDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sehirId = null,
    Object? sehirAdi = null,
    Object? plakaNo = freezed,
    Object? telefonKodu = freezed,
    Object? ulkeKodu = null,
  }) {
    return _then(_$_CityDto(
      sehirId: null == sehirId
          ? _value.sehirId
          : sehirId // ignore: cast_nullable_to_non_nullable
              as int,
      sehirAdi: null == sehirAdi
          ? _value.sehirAdi
          : sehirAdi // ignore: cast_nullable_to_non_nullable
              as String,
      plakaNo: freezed == plakaNo
          ? _value.plakaNo
          : plakaNo // ignore: cast_nullable_to_non_nullable
              as int?,
      telefonKodu: freezed == telefonKodu
          ? _value.telefonKodu
          : telefonKodu // ignore: cast_nullable_to_non_nullable
              as int?,
      ulkeKodu: null == ulkeKodu
          ? _value.ulkeKodu
          : ulkeKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityDto with DiagnosticableTreeMixin implements _CityDto {
  const _$_CityDto(
      {required this.sehirId,
      required this.sehirAdi,
      required this.plakaNo,
      required this.telefonKodu,
      required this.ulkeKodu});

  factory _$_CityDto.fromJson(Map<String, dynamic> json) =>
      _$$_CityDtoFromJson(json);

  @override
  final int sehirId;
  @override
  final String sehirAdi;
  @override
  final int? plakaNo;
  @override
  final int? telefonKodu;
  @override
  final String ulkeKodu;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CityDto(sehirId: $sehirId, sehirAdi: $sehirAdi, plakaNo: $plakaNo, telefonKodu: $telefonKodu, ulkeKodu: $ulkeKodu)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CityDto'))
      ..add(DiagnosticsProperty('sehirId', sehirId))
      ..add(DiagnosticsProperty('sehirAdi', sehirAdi))
      ..add(DiagnosticsProperty('plakaNo', plakaNo))
      ..add(DiagnosticsProperty('telefonKodu', telefonKodu))
      ..add(DiagnosticsProperty('ulkeKodu', ulkeKodu));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityDto &&
            (identical(other.sehirId, sehirId) || other.sehirId == sehirId) &&
            (identical(other.sehirAdi, sehirAdi) ||
                other.sehirAdi == sehirAdi) &&
            (identical(other.plakaNo, plakaNo) || other.plakaNo == plakaNo) &&
            (identical(other.telefonKodu, telefonKodu) ||
                other.telefonKodu == telefonKodu) &&
            (identical(other.ulkeKodu, ulkeKodu) ||
                other.ulkeKodu == ulkeKodu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sehirId, sehirAdi, plakaNo, telefonKodu, ulkeKodu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityDtoCopyWith<_$_CityDto> get copyWith =>
      __$$_CityDtoCopyWithImpl<_$_CityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityDtoToJson(
      this,
    );
  }
}

abstract class _CityDto implements CityDto {
  const factory _CityDto(
      {required final int sehirId,
      required final String sehirAdi,
      required final int? plakaNo,
      required final int? telefonKodu,
      required final String ulkeKodu}) = _$_CityDto;

  factory _CityDto.fromJson(Map<String, dynamic> json) = _$_CityDto.fromJson;

  @override
  int get sehirId;
  @override
  String get sehirAdi;
  @override
  int? get plakaNo;
  @override
  int? get telefonKodu;
  @override
  String get ulkeKodu;
  @override
  @JsonKey(ignore: true)
  _$$_CityDtoCopyWith<_$_CityDto> get copyWith =>
      throw _privateConstructorUsedError;
}
