// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_person_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesPersonDto _$SalesPersonDtoFromJson(Map<String, dynamic> json) {
  return _SalesPersonDto.fromJson(json);
}

/// @nodoc
mixin _$SalesPersonDto {
  int? get plasiyerId => throw _privateConstructorUsedError;
  String get kodu => throw _privateConstructorUsedError;
  String? get adi => throw _privateConstructorUsedError;
  bool get aktif => throw _privateConstructorUsedError;
  String get sirketKodu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesPersonDtoCopyWith<SalesPersonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesPersonDtoCopyWith<$Res> {
  factory $SalesPersonDtoCopyWith(
          SalesPersonDto value, $Res Function(SalesPersonDto) then) =
      _$SalesPersonDtoCopyWithImpl<$Res, SalesPersonDto>;
  @useResult
  $Res call(
      {int? plasiyerId,
      String kodu,
      String? adi,
      bool aktif,
      String sirketKodu});
}

/// @nodoc
class _$SalesPersonDtoCopyWithImpl<$Res, $Val extends SalesPersonDto>
    implements $SalesPersonDtoCopyWith<$Res> {
  _$SalesPersonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plasiyerId = freezed,
    Object? kodu = null,
    Object? adi = freezed,
    Object? aktif = null,
    Object? sirketKodu = null,
  }) {
    return _then(_value.copyWith(
      plasiyerId: freezed == plasiyerId
          ? _value.plasiyerId
          : plasiyerId // ignore: cast_nullable_to_non_nullable
              as int?,
      kodu: null == kodu
          ? _value.kodu
          : kodu // ignore: cast_nullable_to_non_nullable
              as String,
      adi: freezed == adi
          ? _value.adi
          : adi // ignore: cast_nullable_to_non_nullable
              as String?,
      aktif: null == aktif
          ? _value.aktif
          : aktif // ignore: cast_nullable_to_non_nullable
              as bool,
      sirketKodu: null == sirketKodu
          ? _value.sirketKodu
          : sirketKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesPersonDtoCopyWith<$Res>
    implements $SalesPersonDtoCopyWith<$Res> {
  factory _$$_SalesPersonDtoCopyWith(
          _$_SalesPersonDto value, $Res Function(_$_SalesPersonDto) then) =
      __$$_SalesPersonDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? plasiyerId,
      String kodu,
      String? adi,
      bool aktif,
      String sirketKodu});
}

/// @nodoc
class __$$_SalesPersonDtoCopyWithImpl<$Res>
    extends _$SalesPersonDtoCopyWithImpl<$Res, _$_SalesPersonDto>
    implements _$$_SalesPersonDtoCopyWith<$Res> {
  __$$_SalesPersonDtoCopyWithImpl(
      _$_SalesPersonDto _value, $Res Function(_$_SalesPersonDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plasiyerId = freezed,
    Object? kodu = null,
    Object? adi = freezed,
    Object? aktif = null,
    Object? sirketKodu = null,
  }) {
    return _then(_$_SalesPersonDto(
      plasiyerId: freezed == plasiyerId
          ? _value.plasiyerId
          : plasiyerId // ignore: cast_nullable_to_non_nullable
              as int?,
      kodu: null == kodu
          ? _value.kodu
          : kodu // ignore: cast_nullable_to_non_nullable
              as String,
      adi: freezed == adi
          ? _value.adi
          : adi // ignore: cast_nullable_to_non_nullable
              as String?,
      aktif: null == aktif
          ? _value.aktif
          : aktif // ignore: cast_nullable_to_non_nullable
              as bool,
      sirketKodu: null == sirketKodu
          ? _value.sirketKodu
          : sirketKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesPersonDto
    with DiagnosticableTreeMixin
    implements _SalesPersonDto {
  const _$_SalesPersonDto(
      {required this.plasiyerId,
      required this.kodu,
      required this.adi,
      required this.aktif,
      required this.sirketKodu});

  factory _$_SalesPersonDto.fromJson(Map<String, dynamic> json) =>
      _$$_SalesPersonDtoFromJson(json);

  @override
  final int? plasiyerId;
  @override
  final String kodu;
  @override
  final String? adi;
  @override
  final bool aktif;
  @override
  final String sirketKodu;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SalesPersonDto(plasiyerId: $plasiyerId, kodu: $kodu, adi: $adi, aktif: $aktif, sirketKodu: $sirketKodu)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SalesPersonDto'))
      ..add(DiagnosticsProperty('plasiyerId', plasiyerId))
      ..add(DiagnosticsProperty('kodu', kodu))
      ..add(DiagnosticsProperty('adi', adi))
      ..add(DiagnosticsProperty('aktif', aktif))
      ..add(DiagnosticsProperty('sirketKodu', sirketKodu));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesPersonDto &&
            (identical(other.plasiyerId, plasiyerId) ||
                other.plasiyerId == plasiyerId) &&
            (identical(other.kodu, kodu) || other.kodu == kodu) &&
            (identical(other.adi, adi) || other.adi == adi) &&
            (identical(other.aktif, aktif) || other.aktif == aktif) &&
            (identical(other.sirketKodu, sirketKodu) ||
                other.sirketKodu == sirketKodu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, plasiyerId, kodu, adi, aktif, sirketKodu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesPersonDtoCopyWith<_$_SalesPersonDto> get copyWith =>
      __$$_SalesPersonDtoCopyWithImpl<_$_SalesPersonDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesPersonDtoToJson(
      this,
    );
  }
}

abstract class _SalesPersonDto implements SalesPersonDto {
  const factory _SalesPersonDto(
      {required final int? plasiyerId,
      required final String kodu,
      required final String? adi,
      required final bool aktif,
      required final String sirketKodu}) = _$_SalesPersonDto;

  factory _SalesPersonDto.fromJson(Map<String, dynamic> json) =
      _$_SalesPersonDto.fromJson;

  @override
  int? get plasiyerId;
  @override
  String get kodu;
  @override
  String? get adi;
  @override
  bool get aktif;
  @override
  String get sirketKodu;
  @override
  @JsonKey(ignore: true)
  _$$_SalesPersonDtoCopyWith<_$_SalesPersonDto> get copyWith =>
      throw _privateConstructorUsedError;
}
