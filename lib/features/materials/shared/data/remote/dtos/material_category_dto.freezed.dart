// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MaterialCategoryDto _$MaterialCategoryDtoFromJson(Map<String, dynamic> json) {
  return _MaterialCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$MaterialCategoryDto {
  int? get id => throw _privateConstructorUsedError;
  String get sirketKodu => throw _privateConstructorUsedError;
  String get kategorikodu => throw _privateConstructorUsedError;
  String get adi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaterialCategoryDtoCopyWith<MaterialCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialCategoryDtoCopyWith<$Res> {
  factory $MaterialCategoryDtoCopyWith(
          MaterialCategoryDto value, $Res Function(MaterialCategoryDto) then) =
      _$MaterialCategoryDtoCopyWithImpl<$Res, MaterialCategoryDto>;
  @useResult
  $Res call({int? id, String sirketKodu, String kategorikodu, String adi});
}

/// @nodoc
class _$MaterialCategoryDtoCopyWithImpl<$Res, $Val extends MaterialCategoryDto>
    implements $MaterialCategoryDtoCopyWith<$Res> {
  _$MaterialCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sirketKodu = null,
    Object? kategorikodu = null,
    Object? adi = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sirketKodu: null == sirketKodu
          ? _value.sirketKodu
          : sirketKodu // ignore: cast_nullable_to_non_nullable
              as String,
      kategorikodu: null == kategorikodu
          ? _value.kategorikodu
          : kategorikodu // ignore: cast_nullable_to_non_nullable
              as String,
      adi: null == adi
          ? _value.adi
          : adi // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MaterialCategoryDtoCopyWith<$Res>
    implements $MaterialCategoryDtoCopyWith<$Res> {
  factory _$$_MaterialCategoryDtoCopyWith(_$_MaterialCategoryDto value,
          $Res Function(_$_MaterialCategoryDto) then) =
      __$$_MaterialCategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String sirketKodu, String kategorikodu, String adi});
}

/// @nodoc
class __$$_MaterialCategoryDtoCopyWithImpl<$Res>
    extends _$MaterialCategoryDtoCopyWithImpl<$Res, _$_MaterialCategoryDto>
    implements _$$_MaterialCategoryDtoCopyWith<$Res> {
  __$$_MaterialCategoryDtoCopyWithImpl(_$_MaterialCategoryDto _value,
      $Res Function(_$_MaterialCategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sirketKodu = null,
    Object? kategorikodu = null,
    Object? adi = null,
  }) {
    return _then(_$_MaterialCategoryDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sirketKodu: null == sirketKodu
          ? _value.sirketKodu
          : sirketKodu // ignore: cast_nullable_to_non_nullable
              as String,
      kategorikodu: null == kategorikodu
          ? _value.kategorikodu
          : kategorikodu // ignore: cast_nullable_to_non_nullable
              as String,
      adi: null == adi
          ? _value.adi
          : adi // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MaterialCategoryDto
    with DiagnosticableTreeMixin
    implements _MaterialCategoryDto {
  const _$_MaterialCategoryDto(
      {required this.id,
      required this.sirketKodu,
      required this.kategorikodu,
      required this.adi});

  factory _$_MaterialCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_MaterialCategoryDtoFromJson(json);

  @override
  final int? id;
  @override
  final String sirketKodu;
  @override
  final String kategorikodu;
  @override
  final String adi;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MaterialCategoryDto(id: $id, sirketKodu: $sirketKodu, kategorikodu: $kategorikodu, adi: $adi)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MaterialCategoryDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sirketKodu', sirketKodu))
      ..add(DiagnosticsProperty('kategorikodu', kategorikodu))
      ..add(DiagnosticsProperty('adi', adi));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaterialCategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sirketKodu, sirketKodu) ||
                other.sirketKodu == sirketKodu) &&
            (identical(other.kategorikodu, kategorikodu) ||
                other.kategorikodu == kategorikodu) &&
            (identical(other.adi, adi) || other.adi == adi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sirketKodu, kategorikodu, adi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaterialCategoryDtoCopyWith<_$_MaterialCategoryDto> get copyWith =>
      __$$_MaterialCategoryDtoCopyWithImpl<_$_MaterialCategoryDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaterialCategoryDtoToJson(
      this,
    );
  }
}

abstract class _MaterialCategoryDto implements MaterialCategoryDto {
  const factory _MaterialCategoryDto(
      {required final int? id,
      required final String sirketKodu,
      required final String kategorikodu,
      required final String adi}) = _$_MaterialCategoryDto;

  factory _MaterialCategoryDto.fromJson(Map<String, dynamic> json) =
      _$_MaterialCategoryDto.fromJson;

  @override
  int? get id;
  @override
  String get sirketKodu;
  @override
  String get kategorikodu;
  @override
  String get adi;
  @override
  @JsonKey(ignore: true)
  _$$_MaterialCategoryDtoCopyWith<_$_MaterialCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
