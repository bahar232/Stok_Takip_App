// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_invoice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailInvoiceState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  InvoiceDetailResult? get invoiceResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailInvoiceStateCopyWith<DetailInvoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailInvoiceStateCopyWith<$Res> {
  factory $DetailInvoiceStateCopyWith(
          DetailInvoiceState value, $Res Function(DetailInvoiceState) then) =
      _$DetailInvoiceStateCopyWithImpl<$Res, DetailInvoiceState>;
  @useResult
  $Res call(
      {bool isLoading, String? message, InvoiceDetailResult? invoiceResult});

  $InvoiceDetailResultCopyWith<$Res>? get invoiceResult;
}

/// @nodoc
class _$DetailInvoiceStateCopyWithImpl<$Res, $Val extends DetailInvoiceState>
    implements $DetailInvoiceStateCopyWith<$Res> {
  _$DetailInvoiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = freezed,
    Object? invoiceResult = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceResult: freezed == invoiceResult
          ? _value.invoiceResult
          : invoiceResult // ignore: cast_nullable_to_non_nullable
              as InvoiceDetailResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceDetailResultCopyWith<$Res>? get invoiceResult {
    if (_value.invoiceResult == null) {
      return null;
    }

    return $InvoiceDetailResultCopyWith<$Res>(_value.invoiceResult!, (value) {
      return _then(_value.copyWith(invoiceResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailInvoiceStateCopyWith<$Res>
    implements $DetailInvoiceStateCopyWith<$Res> {
  factory _$$_DetailInvoiceStateCopyWith(_$_DetailInvoiceState value,
          $Res Function(_$_DetailInvoiceState) then) =
      __$$_DetailInvoiceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, String? message, InvoiceDetailResult? invoiceResult});

  @override
  $InvoiceDetailResultCopyWith<$Res>? get invoiceResult;
}

/// @nodoc
class __$$_DetailInvoiceStateCopyWithImpl<$Res>
    extends _$DetailInvoiceStateCopyWithImpl<$Res, _$_DetailInvoiceState>
    implements _$$_DetailInvoiceStateCopyWith<$Res> {
  __$$_DetailInvoiceStateCopyWithImpl(
      _$_DetailInvoiceState _value, $Res Function(_$_DetailInvoiceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? message = freezed,
    Object? invoiceResult = freezed,
  }) {
    return _then(_$_DetailInvoiceState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceResult: freezed == invoiceResult
          ? _value.invoiceResult
          : invoiceResult // ignore: cast_nullable_to_non_nullable
              as InvoiceDetailResult?,
    ));
  }
}

/// @nodoc

class _$_DetailInvoiceState
    with DiagnosticableTreeMixin
    implements _DetailInvoiceState {
  const _$_DetailInvoiceState(
      {required this.isLoading, this.message, this.invoiceResult});

  @override
  final bool isLoading;
  @override
  final String? message;
  @override
  final InvoiceDetailResult? invoiceResult;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailInvoiceState(isLoading: $isLoading, message: $message, invoiceResult: $invoiceResult)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailInvoiceState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('invoiceResult', invoiceResult));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailInvoiceState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.invoiceResult, invoiceResult) ||
                other.invoiceResult == invoiceResult));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, message, invoiceResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailInvoiceStateCopyWith<_$_DetailInvoiceState> get copyWith =>
      __$$_DetailInvoiceStateCopyWithImpl<_$_DetailInvoiceState>(
          this, _$identity);
}

abstract class _DetailInvoiceState implements DetailInvoiceState {
  const factory _DetailInvoiceState(
      {required final bool isLoading,
      final String? message,
      final InvoiceDetailResult? invoiceResult}) = _$_DetailInvoiceState;

  @override
  bool get isLoading;
  @override
  String? get message;
  @override
  InvoiceDetailResult? get invoiceResult;
  @override
  @JsonKey(ignore: true)
  _$$_DetailInvoiceStateCopyWith<_$_DetailInvoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}
