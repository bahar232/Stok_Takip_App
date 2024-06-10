// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_detail_with_material_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceDetailWithMaterialDto _$InvoiceDetailWithMaterialDtoFromJson(
    Map<String, dynamic> json) {
  return _InvoiceDetailWithMaterialDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDetailWithMaterialDto {
  MaterialDto get malzeme => throw _privateConstructorUsedError;
  InvoiceDetailDto get belgeDetaylari => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDetailWithMaterialDtoCopyWith<InvoiceDetailWithMaterialDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDetailWithMaterialDtoCopyWith<$Res> {
  factory $InvoiceDetailWithMaterialDtoCopyWith(
          InvoiceDetailWithMaterialDto value,
          $Res Function(InvoiceDetailWithMaterialDto) then) =
      _$InvoiceDetailWithMaterialDtoCopyWithImpl<$Res,
          InvoiceDetailWithMaterialDto>;
  @useResult
  $Res call({MaterialDto malzeme, InvoiceDetailDto belgeDetaylari});

  $MaterialDtoCopyWith<$Res> get malzeme;
  $InvoiceDetailDtoCopyWith<$Res> get belgeDetaylari;
}

/// @nodoc
class _$InvoiceDetailWithMaterialDtoCopyWithImpl<$Res,
        $Val extends InvoiceDetailWithMaterialDto>
    implements $InvoiceDetailWithMaterialDtoCopyWith<$Res> {
  _$InvoiceDetailWithMaterialDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malzeme = null,
    Object? belgeDetaylari = null,
  }) {
    return _then(_value.copyWith(
      malzeme: null == malzeme
          ? _value.malzeme
          : malzeme // ignore: cast_nullable_to_non_nullable
              as MaterialDto,
      belgeDetaylari: null == belgeDetaylari
          ? _value.belgeDetaylari
          : belgeDetaylari // ignore: cast_nullable_to_non_nullable
              as InvoiceDetailDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MaterialDtoCopyWith<$Res> get malzeme {
    return $MaterialDtoCopyWith<$Res>(_value.malzeme, (value) {
      return _then(_value.copyWith(malzeme: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDetailDtoCopyWith<$Res> get belgeDetaylari {
    return $InvoiceDetailDtoCopyWith<$Res>(_value.belgeDetaylari, (value) {
      return _then(_value.copyWith(belgeDetaylari: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InvoiceDetailWithMaterialDtoCopyWith<$Res>
    implements $InvoiceDetailWithMaterialDtoCopyWith<$Res> {
  factory _$$_InvoiceDetailWithMaterialDtoCopyWith(
          _$_InvoiceDetailWithMaterialDto value,
          $Res Function(_$_InvoiceDetailWithMaterialDto) then) =
      __$$_InvoiceDetailWithMaterialDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MaterialDto malzeme, InvoiceDetailDto belgeDetaylari});

  @override
  $MaterialDtoCopyWith<$Res> get malzeme;
  @override
  $InvoiceDetailDtoCopyWith<$Res> get belgeDetaylari;
}

/// @nodoc
class __$$_InvoiceDetailWithMaterialDtoCopyWithImpl<$Res>
    extends _$InvoiceDetailWithMaterialDtoCopyWithImpl<$Res,
        _$_InvoiceDetailWithMaterialDto>
    implements _$$_InvoiceDetailWithMaterialDtoCopyWith<$Res> {
  __$$_InvoiceDetailWithMaterialDtoCopyWithImpl(
      _$_InvoiceDetailWithMaterialDto _value,
      $Res Function(_$_InvoiceDetailWithMaterialDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? malzeme = null,
    Object? belgeDetaylari = null,
  }) {
    return _then(_$_InvoiceDetailWithMaterialDto(
      malzeme: null == malzeme
          ? _value.malzeme
          : malzeme // ignore: cast_nullable_to_non_nullable
              as MaterialDto,
      belgeDetaylari: null == belgeDetaylari
          ? _value.belgeDetaylari
          : belgeDetaylari // ignore: cast_nullable_to_non_nullable
              as InvoiceDetailDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceDetailWithMaterialDto
    with DiagnosticableTreeMixin
    implements _InvoiceDetailWithMaterialDto {
  const _$_InvoiceDetailWithMaterialDto(
      {required this.malzeme, required this.belgeDetaylari});

  factory _$_InvoiceDetailWithMaterialDto.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDetailWithMaterialDtoFromJson(json);

  @override
  final MaterialDto malzeme;
  @override
  final InvoiceDetailDto belgeDetaylari;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceDetailWithMaterialDto(malzeme: $malzeme, belgeDetaylari: $belgeDetaylari)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceDetailWithMaterialDto'))
      ..add(DiagnosticsProperty('malzeme', malzeme))
      ..add(DiagnosticsProperty('belgeDetaylari', belgeDetaylari));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDetailWithMaterialDto &&
            (identical(other.malzeme, malzeme) || other.malzeme == malzeme) &&
            (identical(other.belgeDetaylari, belgeDetaylari) ||
                other.belgeDetaylari == belgeDetaylari));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, malzeme, belgeDetaylari);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDetailWithMaterialDtoCopyWith<_$_InvoiceDetailWithMaterialDto>
      get copyWith => __$$_InvoiceDetailWithMaterialDtoCopyWithImpl<
          _$_InvoiceDetailWithMaterialDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDetailWithMaterialDtoToJson(
      this,
    );
  }
}

abstract class _InvoiceDetailWithMaterialDto
    implements InvoiceDetailWithMaterialDto {
  const factory _InvoiceDetailWithMaterialDto(
          {required final MaterialDto malzeme,
          required final InvoiceDetailDto belgeDetaylari}) =
      _$_InvoiceDetailWithMaterialDto;

  factory _InvoiceDetailWithMaterialDto.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDetailWithMaterialDto.fromJson;

  @override
  MaterialDto get malzeme;
  @override
  InvoiceDetailDto get belgeDetaylari;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDetailWithMaterialDtoCopyWith<_$_InvoiceDetailWithMaterialDto>
      get copyWith => throw _privateConstructorUsedError;
}
