// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MaterialImageDto _$MaterialImageDtoFromJson(Map<String, dynamic> json) {
  return _MaterialImageDto.fromJson(json);
}

/// @nodoc
mixin _$MaterialImageDto {
  int get id => throw _privateConstructorUsedError;
  int get malzemeId => throw _privateConstructorUsedError;
  String get sirketKodu => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get img1 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaterialImageDtoCopyWith<MaterialImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialImageDtoCopyWith<$Res> {
  factory $MaterialImageDtoCopyWith(
          MaterialImageDto value, $Res Function(MaterialImageDto) then) =
      _$MaterialImageDtoCopyWithImpl<$Res, MaterialImageDto>;
  @useResult
  $Res call(
      {int id,
      int malzemeId,
      String sirketKodu,
      @Uint8ListConverter() Uint8List? img1});
}

/// @nodoc
class _$MaterialImageDtoCopyWithImpl<$Res, $Val extends MaterialImageDto>
    implements $MaterialImageDtoCopyWith<$Res> {
  _$MaterialImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? malzemeId = null,
    Object? sirketKodu = null,
    Object? img1 = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      malzemeId: null == malzemeId
          ? _value.malzemeId
          : malzemeId // ignore: cast_nullable_to_non_nullable
              as int,
      sirketKodu: null == sirketKodu
          ? _value.sirketKodu
          : sirketKodu // ignore: cast_nullable_to_non_nullable
              as String,
      img1: freezed == img1
          ? _value.img1
          : img1 // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MaterialImageDtoCopyWith<$Res>
    implements $MaterialImageDtoCopyWith<$Res> {
  factory _$$_MaterialImageDtoCopyWith(
          _$_MaterialImageDto value, $Res Function(_$_MaterialImageDto) then) =
      __$$_MaterialImageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int malzemeId,
      String sirketKodu,
      @Uint8ListConverter() Uint8List? img1});
}

/// @nodoc
class __$$_MaterialImageDtoCopyWithImpl<$Res>
    extends _$MaterialImageDtoCopyWithImpl<$Res, _$_MaterialImageDto>
    implements _$$_MaterialImageDtoCopyWith<$Res> {
  __$$_MaterialImageDtoCopyWithImpl(
      _$_MaterialImageDto _value, $Res Function(_$_MaterialImageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? malzemeId = null,
    Object? sirketKodu = null,
    Object? img1 = freezed,
  }) {
    return _then(_$_MaterialImageDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      malzemeId: null == malzemeId
          ? _value.malzemeId
          : malzemeId // ignore: cast_nullable_to_non_nullable
              as int,
      sirketKodu: null == sirketKodu
          ? _value.sirketKodu
          : sirketKodu // ignore: cast_nullable_to_non_nullable
              as String,
      img1: freezed == img1
          ? _value.img1
          : img1 // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MaterialImageDto
    with DiagnosticableTreeMixin
    implements _MaterialImageDto {
  const _$_MaterialImageDto(
      {required this.id,
      required this.malzemeId,
      required this.sirketKodu,
      @Uint8ListConverter() required this.img1});

  factory _$_MaterialImageDto.fromJson(Map<String, dynamic> json) =>
      _$$_MaterialImageDtoFromJson(json);

  @override
  final int id;
  @override
  final int malzemeId;
  @override
  final String sirketKodu;
  @override
  @Uint8ListConverter()
  final Uint8List? img1;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MaterialImageDto(id: $id, malzemeId: $malzemeId, sirketKodu: $sirketKodu, img1: $img1)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MaterialImageDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('malzemeId', malzemeId))
      ..add(DiagnosticsProperty('sirketKodu', sirketKodu))
      ..add(DiagnosticsProperty('img1', img1));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaterialImageDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.malzemeId, malzemeId) ||
                other.malzemeId == malzemeId) &&
            (identical(other.sirketKodu, sirketKodu) ||
                other.sirketKodu == sirketKodu) &&
            const DeepCollectionEquality().equals(other.img1, img1));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, malzemeId, sirketKodu,
      const DeepCollectionEquality().hash(img1));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaterialImageDtoCopyWith<_$_MaterialImageDto> get copyWith =>
      __$$_MaterialImageDtoCopyWithImpl<_$_MaterialImageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaterialImageDtoToJson(
      this,
    );
  }
}

abstract class _MaterialImageDto implements MaterialImageDto {
  const factory _MaterialImageDto(
          {required final int id,
          required final int malzemeId,
          required final String sirketKodu,
          @Uint8ListConverter() required final Uint8List? img1}) =
      _$_MaterialImageDto;

  factory _MaterialImageDto.fromJson(Map<String, dynamic> json) =
      _$_MaterialImageDto.fromJson;

  @override
  int get id;
  @override
  int get malzemeId;
  @override
  String get sirketKodu;
  @override
  @Uint8ListConverter()
  Uint8List? get img1;
  @override
  @JsonKey(ignore: true)
  _$$_MaterialImageDtoCopyWith<_$_MaterialImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
