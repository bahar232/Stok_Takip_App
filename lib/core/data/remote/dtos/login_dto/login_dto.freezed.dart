// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return _LoginDto.fromJson(json);
}

/// @nodoc
mixin _$LoginDto {
  String get kullaniciAdi => throw _privateConstructorUsedError;
  String get sifre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res, LoginDto>;
  @useResult
  $Res call({String kullaniciAdi, String sifre});
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res, $Val extends LoginDto>
    implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kullaniciAdi = null,
    Object? sifre = null,
  }) {
    return _then(_value.copyWith(
      kullaniciAdi: null == kullaniciAdi
          ? _value.kullaniciAdi
          : kullaniciAdi // ignore: cast_nullable_to_non_nullable
              as String,
      sifre: null == sifre
          ? _value.sifre
          : sifre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginDtoCopyWith<$Res> implements $LoginDtoCopyWith<$Res> {
  factory _$$_LoginDtoCopyWith(
          _$_LoginDto value, $Res Function(_$_LoginDto) then) =
      __$$_LoginDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kullaniciAdi, String sifre});
}

/// @nodoc
class __$$_LoginDtoCopyWithImpl<$Res>
    extends _$LoginDtoCopyWithImpl<$Res, _$_LoginDto>
    implements _$$_LoginDtoCopyWith<$Res> {
  __$$_LoginDtoCopyWithImpl(
      _$_LoginDto _value, $Res Function(_$_LoginDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kullaniciAdi = null,
    Object? sifre = null,
  }) {
    return _then(_$_LoginDto(
      kullaniciAdi: null == kullaniciAdi
          ? _value.kullaniciAdi
          : kullaniciAdi // ignore: cast_nullable_to_non_nullable
              as String,
      sifre: null == sifre
          ? _value.sifre
          : sifre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDto with DiagnosticableTreeMixin implements _LoginDto {
  const _$_LoginDto({required this.kullaniciAdi, required this.sifre});

  factory _$_LoginDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDtoFromJson(json);

  @override
  final String kullaniciAdi;
  @override
  final String sifre;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginDto(kullaniciAdi: $kullaniciAdi, sifre: $sifre)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginDto'))
      ..add(DiagnosticsProperty('kullaniciAdi', kullaniciAdi))
      ..add(DiagnosticsProperty('sifre', sifre));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginDto &&
            (identical(other.kullaniciAdi, kullaniciAdi) ||
                other.kullaniciAdi == kullaniciAdi) &&
            (identical(other.sifre, sifre) || other.sifre == sifre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kullaniciAdi, sifre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginDtoCopyWith<_$_LoginDto> get copyWith =>
      __$$_LoginDtoCopyWithImpl<_$_LoginDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDtoToJson(
      this,
    );
  }
}

abstract class _LoginDto implements LoginDto {
  const factory _LoginDto(
      {required final String kullaniciAdi,
      required final String sifre}) = _$_LoginDto;

  factory _LoginDto.fromJson(Map<String, dynamic> json) = _$_LoginDto.fromJson;

  @override
  String get kullaniciAdi;
  @override
  String get sifre;
  @override
  @JsonKey(ignore: true)
  _$$_LoginDtoCopyWith<_$_LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}
