// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_detail_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceDetailResultDto _$InvoiceDetailResultDtoFromJson(
    Map<String, dynamic> json) {
  return _InvoiceDetailResultDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDetailResultDto {
  CustomerDto get cari => throw _privateConstructorUsedError;
  InvoiceDto get belge => throw _privateConstructorUsedError;
  List<InvoiceDetailWithMaterialDto> get malzemeBelgeler =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDetailResultDtoCopyWith<InvoiceDetailResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDetailResultDtoCopyWith<$Res> {
  factory $InvoiceDetailResultDtoCopyWith(InvoiceDetailResultDto value,
          $Res Function(InvoiceDetailResultDto) then) =
      _$InvoiceDetailResultDtoCopyWithImpl<$Res, InvoiceDetailResultDto>;
  @useResult
  $Res call(
      {CustomerDto cari,
      InvoiceDto belge,
      List<InvoiceDetailWithMaterialDto> malzemeBelgeler});

  $CustomerDtoCopyWith<$Res> get cari;
  $InvoiceDtoCopyWith<$Res> get belge;
}

/// @nodoc
class _$InvoiceDetailResultDtoCopyWithImpl<$Res,
        $Val extends InvoiceDetailResultDto>
    implements $InvoiceDetailResultDtoCopyWith<$Res> {
  _$InvoiceDetailResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cari = null,
    Object? belge = null,
    Object? malzemeBelgeler = null,
  }) {
    return _then(_value.copyWith(
      cari: null == cari
          ? _value.cari
          : cari // ignore: cast_nullable_to_non_nullable
              as CustomerDto,
      belge: null == belge
          ? _value.belge
          : belge // ignore: cast_nullable_to_non_nullable
              as InvoiceDto,
      malzemeBelgeler: null == malzemeBelgeler
          ? _value.malzemeBelgeler
          : malzemeBelgeler // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDetailWithMaterialDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerDtoCopyWith<$Res> get cari {
    return $CustomerDtoCopyWith<$Res>(_value.cari, (value) {
      return _then(_value.copyWith(cari: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDtoCopyWith<$Res> get belge {
    return $InvoiceDtoCopyWith<$Res>(_value.belge, (value) {
      return _then(_value.copyWith(belge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InvoiceDetailResultDtoCopyWith<$Res>
    implements $InvoiceDetailResultDtoCopyWith<$Res> {
  factory _$$_InvoiceDetailResultDtoCopyWith(_$_InvoiceDetailResultDto value,
          $Res Function(_$_InvoiceDetailResultDto) then) =
      __$$_InvoiceDetailResultDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CustomerDto cari,
      InvoiceDto belge,
      List<InvoiceDetailWithMaterialDto> malzemeBelgeler});

  @override
  $CustomerDtoCopyWith<$Res> get cari;
  @override
  $InvoiceDtoCopyWith<$Res> get belge;
}

/// @nodoc
class __$$_InvoiceDetailResultDtoCopyWithImpl<$Res>
    extends _$InvoiceDetailResultDtoCopyWithImpl<$Res,
        _$_InvoiceDetailResultDto>
    implements _$$_InvoiceDetailResultDtoCopyWith<$Res> {
  __$$_InvoiceDetailResultDtoCopyWithImpl(_$_InvoiceDetailResultDto _value,
      $Res Function(_$_InvoiceDetailResultDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cari = null,
    Object? belge = null,
    Object? malzemeBelgeler = null,
  }) {
    return _then(_$_InvoiceDetailResultDto(
      cari: null == cari
          ? _value.cari
          : cari // ignore: cast_nullable_to_non_nullable
              as CustomerDto,
      belge: null == belge
          ? _value.belge
          : belge // ignore: cast_nullable_to_non_nullable
              as InvoiceDto,
      malzemeBelgeler: null == malzemeBelgeler
          ? _value._malzemeBelgeler
          : malzemeBelgeler // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDetailWithMaterialDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceDetailResultDto
    with DiagnosticableTreeMixin
    implements _InvoiceDetailResultDto {
  const _$_InvoiceDetailResultDto(
      {required this.cari,
      required this.belge,
      required final List<InvoiceDetailWithMaterialDto> malzemeBelgeler})
      : _malzemeBelgeler = malzemeBelgeler;

  factory _$_InvoiceDetailResultDto.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDetailResultDtoFromJson(json);

  @override
  final CustomerDto cari;
  @override
  final InvoiceDto belge;
  final List<InvoiceDetailWithMaterialDto> _malzemeBelgeler;
  @override
  List<InvoiceDetailWithMaterialDto> get malzemeBelgeler {
    if (_malzemeBelgeler is EqualUnmodifiableListView) return _malzemeBelgeler;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_malzemeBelgeler);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InvoiceDetailResultDto(cari: $cari, belge: $belge, malzemeBelgeler: $malzemeBelgeler)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InvoiceDetailResultDto'))
      ..add(DiagnosticsProperty('cari', cari))
      ..add(DiagnosticsProperty('belge', belge))
      ..add(DiagnosticsProperty('malzemeBelgeler', malzemeBelgeler));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDetailResultDto &&
            (identical(other.cari, cari) || other.cari == cari) &&
            (identical(other.belge, belge) || other.belge == belge) &&
            const DeepCollectionEquality()
                .equals(other._malzemeBelgeler, _malzemeBelgeler));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cari, belge,
      const DeepCollectionEquality().hash(_malzemeBelgeler));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceDetailResultDtoCopyWith<_$_InvoiceDetailResultDto> get copyWith =>
      __$$_InvoiceDetailResultDtoCopyWithImpl<_$_InvoiceDetailResultDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDetailResultDtoToJson(
      this,
    );
  }
}

abstract class _InvoiceDetailResultDto implements InvoiceDetailResultDto {
  const factory _InvoiceDetailResultDto(
          {required final CustomerDto cari,
          required final InvoiceDto belge,
          required final List<InvoiceDetailWithMaterialDto> malzemeBelgeler}) =
      _$_InvoiceDetailResultDto;

  factory _InvoiceDetailResultDto.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDetailResultDto.fromJson;

  @override
  CustomerDto get cari;
  @override
  InvoiceDto get belge;
  @override
  List<InvoiceDetailWithMaterialDto> get malzemeBelgeler;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDetailResultDtoCopyWith<_$_InvoiceDetailResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}
