// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_image_save.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MaterialImageSaveDto _$MaterialImageSaveDtoFromJson(Map<String, dynamic> json) {
  return _MaterialImageSaveDto.fromJson(json);
}

/// @nodoc
mixin _$MaterialImageSaveDto {
  int get materialId => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaterialImageSaveDtoCopyWith<MaterialImageSaveDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialImageSaveDtoCopyWith<$Res> {
  factory $MaterialImageSaveDtoCopyWith(MaterialImageSaveDto value,
          $Res Function(MaterialImageSaveDto) then) =
      _$MaterialImageSaveDtoCopyWithImpl<$Res, MaterialImageSaveDto>;
  @useResult
  $Res call({int materialId, String filePath});
}

/// @nodoc
class _$MaterialImageSaveDtoCopyWithImpl<$Res,
        $Val extends MaterialImageSaveDto>
    implements $MaterialImageSaveDtoCopyWith<$Res> {
  _$MaterialImageSaveDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialId = null,
    Object? filePath = null,
  }) {
    return _then(_value.copyWith(
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MaterialImageSaveDtoCopyWith<$Res>
    implements $MaterialImageSaveDtoCopyWith<$Res> {
  factory _$$_MaterialImageSaveDtoCopyWith(_$_MaterialImageSaveDto value,
          $Res Function(_$_MaterialImageSaveDto) then) =
      __$$_MaterialImageSaveDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int materialId, String filePath});
}

/// @nodoc
class __$$_MaterialImageSaveDtoCopyWithImpl<$Res>
    extends _$MaterialImageSaveDtoCopyWithImpl<$Res, _$_MaterialImageSaveDto>
    implements _$$_MaterialImageSaveDtoCopyWith<$Res> {
  __$$_MaterialImageSaveDtoCopyWithImpl(_$_MaterialImageSaveDto _value,
      $Res Function(_$_MaterialImageSaveDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialId = null,
    Object? filePath = null,
  }) {
    return _then(_$_MaterialImageSaveDto(
      materialId: null == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MaterialImageSaveDto
    with DiagnosticableTreeMixin
    implements _MaterialImageSaveDto {
  const _$_MaterialImageSaveDto(
      {required this.materialId, required this.filePath});

  factory _$_MaterialImageSaveDto.fromJson(Map<String, dynamic> json) =>
      _$$_MaterialImageSaveDtoFromJson(json);

  @override
  final int materialId;
  @override
  final String filePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MaterialImageSaveDto(materialId: $materialId, filePath: $filePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MaterialImageSaveDto'))
      ..add(DiagnosticsProperty('materialId', materialId))
      ..add(DiagnosticsProperty('filePath', filePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaterialImageSaveDto &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, materialId, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaterialImageSaveDtoCopyWith<_$_MaterialImageSaveDto> get copyWith =>
      __$$_MaterialImageSaveDtoCopyWithImpl<_$_MaterialImageSaveDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaterialImageSaveDtoToJson(
      this,
    );
  }
}

abstract class _MaterialImageSaveDto implements MaterialImageSaveDto {
  const factory _MaterialImageSaveDto(
      {required final int materialId,
      required final String filePath}) = _$_MaterialImageSaveDto;

  factory _MaterialImageSaveDto.fromJson(Map<String, dynamic> json) =
      _$_MaterialImageSaveDto.fromJson;

  @override
  int get materialId;
  @override
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$$_MaterialImageSaveDtoCopyWith<_$_MaterialImageSaveDto> get copyWith =>
      throw _privateConstructorUsedError;
}
