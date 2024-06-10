// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

/// @nodoc
mixin _$AuthDto {
  int get id => throw _privateConstructorUsedError;
  String get kullaniciAdi => throw _privateConstructorUsedError;
  String get adiSoyadi => throw _privateConstructorUsedError;
  String get aktifSirket => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  DateTime get tokenExpireDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDtoCopyWith<AuthDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res, AuthDto>;
  @useResult
  $Res call(
      {int id,
      String kullaniciAdi,
      String adiSoyadi,
      String aktifSirket,
      String token,
      DateTime tokenExpireDate});
}

/// @nodoc
class _$AuthDtoCopyWithImpl<$Res, $Val extends AuthDto>
    implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kullaniciAdi = null,
    Object? adiSoyadi = null,
    Object? aktifSirket = null,
    Object? token = null,
    Object? tokenExpireDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kullaniciAdi: null == kullaniciAdi
          ? _value.kullaniciAdi
          : kullaniciAdi // ignore: cast_nullable_to_non_nullable
              as String,
      adiSoyadi: null == adiSoyadi
          ? _value.adiSoyadi
          : adiSoyadi // ignore: cast_nullable_to_non_nullable
              as String,
      aktifSirket: null == aktifSirket
          ? _value.aktifSirket
          : aktifSirket // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenExpireDate: null == tokenExpireDate
          ? _value.tokenExpireDate
          : tokenExpireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthDtoCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$$_AuthDtoCopyWith(
          _$_AuthDto value, $Res Function(_$_AuthDto) then) =
      __$$_AuthDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String kullaniciAdi,
      String adiSoyadi,
      String aktifSirket,
      String token,
      DateTime tokenExpireDate});
}

/// @nodoc
class __$$_AuthDtoCopyWithImpl<$Res>
    extends _$AuthDtoCopyWithImpl<$Res, _$_AuthDto>
    implements _$$_AuthDtoCopyWith<$Res> {
  __$$_AuthDtoCopyWithImpl(_$_AuthDto _value, $Res Function(_$_AuthDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kullaniciAdi = null,
    Object? adiSoyadi = null,
    Object? aktifSirket = null,
    Object? token = null,
    Object? tokenExpireDate = null,
  }) {
    return _then(_$_AuthDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kullaniciAdi: null == kullaniciAdi
          ? _value.kullaniciAdi
          : kullaniciAdi // ignore: cast_nullable_to_non_nullable
              as String,
      adiSoyadi: null == adiSoyadi
          ? _value.adiSoyadi
          : adiSoyadi // ignore: cast_nullable_to_non_nullable
              as String,
      aktifSirket: null == aktifSirket
          ? _value.aktifSirket
          : aktifSirket // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tokenExpireDate: null == tokenExpireDate
          ? _value.tokenExpireDate
          : tokenExpireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthDto with DiagnosticableTreeMixin implements _AuthDto {
  const _$_AuthDto(
      {required this.id,
      required this.kullaniciAdi,
      required this.adiSoyadi,
      required this.aktifSirket,
      required this.token,
      required this.tokenExpireDate});

  factory _$_AuthDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDtoFromJson(json);

  @override
  final int id;
  @override
  final String kullaniciAdi;
  @override
  final String adiSoyadi;
  @override
  final String aktifSirket;
  @override
  final String token;
  @override
  final DateTime tokenExpireDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthDto(id: $id, kullaniciAdi: $kullaniciAdi, adiSoyadi: $adiSoyadi, aktifSirket: $aktifSirket, token: $token, tokenExpireDate: $tokenExpireDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('kullaniciAdi', kullaniciAdi))
      ..add(DiagnosticsProperty('adiSoyadi', adiSoyadi))
      ..add(DiagnosticsProperty('aktifSirket', aktifSirket))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('tokenExpireDate', tokenExpireDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kullaniciAdi, kullaniciAdi) ||
                other.kullaniciAdi == kullaniciAdi) &&
            (identical(other.adiSoyadi, adiSoyadi) ||
                other.adiSoyadi == adiSoyadi) &&
            (identical(other.aktifSirket, aktifSirket) ||
                other.aktifSirket == aktifSirket) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.tokenExpireDate, tokenExpireDate) ||
                other.tokenExpireDate == tokenExpireDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, kullaniciAdi, adiSoyadi,
      aktifSirket, token, tokenExpireDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthDtoCopyWith<_$_AuthDto> get copyWith =>
      __$$_AuthDtoCopyWithImpl<_$_AuthDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDtoToJson(
      this,
    );
  }
}

abstract class _AuthDto implements AuthDto {
  const factory _AuthDto(
      {required final int id,
      required final String kullaniciAdi,
      required final String adiSoyadi,
      required final String aktifSirket,
      required final String token,
      required final DateTime tokenExpireDate}) = _$_AuthDto;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$_AuthDto.fromJson;

  @override
  int get id;
  @override
  String get kullaniciAdi;
  @override
  String get adiSoyadi;
  @override
  String get aktifSirket;
  @override
  String get token;
  @override
  DateTime get tokenExpireDate;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDtoCopyWith<_$_AuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}
