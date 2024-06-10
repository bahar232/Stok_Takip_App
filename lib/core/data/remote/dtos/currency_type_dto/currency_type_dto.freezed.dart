// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyTypeDto _$CurrencyTypeDtoFromJson(Map<String, dynamic> json) {
  return _CurrencyTypeDto.fromJson(json);
}

/// @nodoc
mixin _$CurrencyTypeDto {
  int get id => throw _privateConstructorUsedError;
  int get dovizTuru => throw _privateConstructorUsedError;
  String get aciklama => throw _privateConstructorUsedError;
  @JsonKey(name: "merkezBankasıKodu")
  String get merkezBankasiKodu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyTypeDtoCopyWith<CurrencyTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyTypeDtoCopyWith<$Res> {
  factory $CurrencyTypeDtoCopyWith(
          CurrencyTypeDto value, $Res Function(CurrencyTypeDto) then) =
      _$CurrencyTypeDtoCopyWithImpl<$Res, CurrencyTypeDto>;
  @useResult
  $Res call(
      {int id,
      int dovizTuru,
      String aciklama,
      @JsonKey(name: "merkezBankasıKodu") String merkezBankasiKodu});
}

/// @nodoc
class _$CurrencyTypeDtoCopyWithImpl<$Res, $Val extends CurrencyTypeDto>
    implements $CurrencyTypeDtoCopyWith<$Res> {
  _$CurrencyTypeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dovizTuru = null,
    Object? aciklama = null,
    Object? merkezBankasiKodu = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dovizTuru: null == dovizTuru
          ? _value.dovizTuru
          : dovizTuru // ignore: cast_nullable_to_non_nullable
              as int,
      aciklama: null == aciklama
          ? _value.aciklama
          : aciklama // ignore: cast_nullable_to_non_nullable
              as String,
      merkezBankasiKodu: null == merkezBankasiKodu
          ? _value.merkezBankasiKodu
          : merkezBankasiKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyTypeDtoCopyWith<$Res>
    implements $CurrencyTypeDtoCopyWith<$Res> {
  factory _$$_CurrencyTypeDtoCopyWith(
          _$_CurrencyTypeDto value, $Res Function(_$_CurrencyTypeDto) then) =
      __$$_CurrencyTypeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int dovizTuru,
      String aciklama,
      @JsonKey(name: "merkezBankasıKodu") String merkezBankasiKodu});
}

/// @nodoc
class __$$_CurrencyTypeDtoCopyWithImpl<$Res>
    extends _$CurrencyTypeDtoCopyWithImpl<$Res, _$_CurrencyTypeDto>
    implements _$$_CurrencyTypeDtoCopyWith<$Res> {
  __$$_CurrencyTypeDtoCopyWithImpl(
      _$_CurrencyTypeDto _value, $Res Function(_$_CurrencyTypeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dovizTuru = null,
    Object? aciklama = null,
    Object? merkezBankasiKodu = null,
  }) {
    return _then(_$_CurrencyTypeDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dovizTuru: null == dovizTuru
          ? _value.dovizTuru
          : dovizTuru // ignore: cast_nullable_to_non_nullable
              as int,
      aciklama: null == aciklama
          ? _value.aciklama
          : aciklama // ignore: cast_nullable_to_non_nullable
              as String,
      merkezBankasiKodu: null == merkezBankasiKodu
          ? _value.merkezBankasiKodu
          : merkezBankasiKodu // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyTypeDto
    with DiagnosticableTreeMixin
    implements _CurrencyTypeDto {
  const _$_CurrencyTypeDto(
      {required this.id,
      required this.dovizTuru,
      required this.aciklama,
      @JsonKey(name: "merkezBankasıKodu") required this.merkezBankasiKodu});

  factory _$_CurrencyTypeDto.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyTypeDtoFromJson(json);

  @override
  final int id;
  @override
  final int dovizTuru;
  @override
  final String aciklama;
  @override
  @JsonKey(name: "merkezBankasıKodu")
  final String merkezBankasiKodu;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyTypeDto(id: $id, dovizTuru: $dovizTuru, aciklama: $aciklama, merkezBankasiKodu: $merkezBankasiKodu)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencyTypeDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('dovizTuru', dovizTuru))
      ..add(DiagnosticsProperty('aciklama', aciklama))
      ..add(DiagnosticsProperty('merkezBankasiKodu', merkezBankasiKodu));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyTypeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dovizTuru, dovizTuru) ||
                other.dovizTuru == dovizTuru) &&
            (identical(other.aciklama, aciklama) ||
                other.aciklama == aciklama) &&
            (identical(other.merkezBankasiKodu, merkezBankasiKodu) ||
                other.merkezBankasiKodu == merkezBankasiKodu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dovizTuru, aciklama, merkezBankasiKodu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyTypeDtoCopyWith<_$_CurrencyTypeDto> get copyWith =>
      __$$_CurrencyTypeDtoCopyWithImpl<_$_CurrencyTypeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyTypeDtoToJson(
      this,
    );
  }
}

abstract class _CurrencyTypeDto implements CurrencyTypeDto {
  const factory _CurrencyTypeDto(
      {required final int id,
      required final int dovizTuru,
      required final String aciklama,
      @JsonKey(name: "merkezBankasıKodu")
      required final String merkezBankasiKodu}) = _$_CurrencyTypeDto;

  factory _CurrencyTypeDto.fromJson(Map<String, dynamic> json) =
      _$_CurrencyTypeDto.fromJson;

  @override
  int get id;
  @override
  int get dovizTuru;
  @override
  String get aciklama;
  @override
  @JsonKey(name: "merkezBankasıKodu")
  String get merkezBankasiKodu;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyTypeDtoCopyWith<_$_CurrencyTypeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
