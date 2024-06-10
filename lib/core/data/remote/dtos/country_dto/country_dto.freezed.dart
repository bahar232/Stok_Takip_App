// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryDto _$CountryDtoFromJson(Map<String, dynamic> json) {
  return _CountryDto.fromJson(json);
}

/// @nodoc
mixin _$CountryDto {
  int get ulkeId => throw _privateConstructorUsedError;
  String get ikiliKod => throw _privateConstructorUsedError;
  String get ucluKod => throw _privateConstructorUsedError;
  String get ulkeAdi => throw _privateConstructorUsedError;
  String get telKodu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryDtoCopyWith<CountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDtoCopyWith<$Res> {
  factory $CountryDtoCopyWith(
          CountryDto value, $Res Function(CountryDto) then) =
      _$CountryDtoCopyWithImpl<$Res, CountryDto>;
  @useResult
  $Res call(
      {int ulkeId,
      String ikiliKod,
      String ucluKod,
      String ulkeAdi,
      String telKodu});
}

/// @nodoc
class _$CountryDtoCopyWithImpl<$Res, $Val extends CountryDto>
    implements $CountryDtoCopyWith<$Res> {
  _$CountryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ulkeId = null,
    Object? ikiliKod = null,
    Object? ucluKod = null,
    Object? ulkeAdi = null,
    Object? telKodu = null,
  }) {
    return _then(_value.copyWith(
      ulkeId: null == ulkeId
          ? _value.ulkeId
          : ulkeId // ignore: cast_nullable_to_non_nullable
              as int,
      ikiliKod: null == ikiliKod
          ? _value.ikiliKod
          : ikiliKod // ignore: cast_nullable_to_non_nullable
              as String,
      ucluKod: null == ucluKod
          ? _value.ucluKod
          : ucluKod // ignore: cast_nullable_to_non_nullable
              as String,
      ulkeAdi: null == ulkeAdi
          ? _value.ulkeAdi
          : ulkeAdi // ignore: cast_nullable_to_non_nullable
              as String,
      telKodu: null == telKodu
          ? _value.telKodu
          : telKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryDtoCopyWith<$Res>
    implements $CountryDtoCopyWith<$Res> {
  factory _$$_CountryDtoCopyWith(
          _$_CountryDto value, $Res Function(_$_CountryDto) then) =
      __$$_CountryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ulkeId,
      String ikiliKod,
      String ucluKod,
      String ulkeAdi,
      String telKodu});
}

/// @nodoc
class __$$_CountryDtoCopyWithImpl<$Res>
    extends _$CountryDtoCopyWithImpl<$Res, _$_CountryDto>
    implements _$$_CountryDtoCopyWith<$Res> {
  __$$_CountryDtoCopyWithImpl(
      _$_CountryDto _value, $Res Function(_$_CountryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ulkeId = null,
    Object? ikiliKod = null,
    Object? ucluKod = null,
    Object? ulkeAdi = null,
    Object? telKodu = null,
  }) {
    return _then(_$_CountryDto(
      ulkeId: null == ulkeId
          ? _value.ulkeId
          : ulkeId // ignore: cast_nullable_to_non_nullable
              as int,
      ikiliKod: null == ikiliKod
          ? _value.ikiliKod
          : ikiliKod // ignore: cast_nullable_to_non_nullable
              as String,
      ucluKod: null == ucluKod
          ? _value.ucluKod
          : ucluKod // ignore: cast_nullable_to_non_nullable
              as String,
      ulkeAdi: null == ulkeAdi
          ? _value.ulkeAdi
          : ulkeAdi // ignore: cast_nullable_to_non_nullable
              as String,
      telKodu: null == telKodu
          ? _value.telKodu
          : telKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryDto with DiagnosticableTreeMixin implements _CountryDto {
  const _$_CountryDto(
      {required this.ulkeId,
      required this.ikiliKod,
      required this.ucluKod,
      required this.ulkeAdi,
      required this.telKodu});

  factory _$_CountryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CountryDtoFromJson(json);

  @override
  final int ulkeId;
  @override
  final String ikiliKod;
  @override
  final String ucluKod;
  @override
  final String ulkeAdi;
  @override
  final String telKodu;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryDto(ulkeId: $ulkeId, ikiliKod: $ikiliKod, ucluKod: $ucluKod, ulkeAdi: $ulkeAdi, telKodu: $telKodu)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryDto'))
      ..add(DiagnosticsProperty('ulkeId', ulkeId))
      ..add(DiagnosticsProperty('ikiliKod', ikiliKod))
      ..add(DiagnosticsProperty('ucluKod', ucluKod))
      ..add(DiagnosticsProperty('ulkeAdi', ulkeAdi))
      ..add(DiagnosticsProperty('telKodu', telKodu));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryDto &&
            (identical(other.ulkeId, ulkeId) || other.ulkeId == ulkeId) &&
            (identical(other.ikiliKod, ikiliKod) ||
                other.ikiliKod == ikiliKod) &&
            (identical(other.ucluKod, ucluKod) || other.ucluKod == ucluKod) &&
            (identical(other.ulkeAdi, ulkeAdi) || other.ulkeAdi == ulkeAdi) &&
            (identical(other.telKodu, telKodu) || other.telKodu == telKodu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ulkeId, ikiliKod, ucluKod, ulkeAdi, telKodu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryDtoCopyWith<_$_CountryDto> get copyWith =>
      __$$_CountryDtoCopyWithImpl<_$_CountryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryDtoToJson(
      this,
    );
  }
}

abstract class _CountryDto implements CountryDto {
  const factory _CountryDto(
      {required final int ulkeId,
      required final String ikiliKod,
      required final String ucluKod,
      required final String ulkeAdi,
      required final String telKodu}) = _$_CountryDto;

  factory _CountryDto.fromJson(Map<String, dynamic> json) =
      _$_CountryDto.fromJson;

  @override
  int get ulkeId;
  @override
  String get ikiliKod;
  @override
  String get ucluKod;
  @override
  String get ulkeAdi;
  @override
  String get telKodu;
  @override
  @JsonKey(ignore: true)
  _$$_CountryDtoCopyWith<_$_CountryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
