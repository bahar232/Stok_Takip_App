// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_invoices_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShowInvoicesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<InvoiceModel> get items => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowInvoicesStateCopyWith<ShowInvoicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowInvoicesStateCopyWith<$Res> {
  factory $ShowInvoicesStateCopyWith(
          ShowInvoicesState value, $Res Function(ShowInvoicesState) then) =
      _$ShowInvoicesStateCopyWithImpl<$Res, ShowInvoicesState>;
  @useResult
  $Res call({bool isLoading, List<InvoiceModel> items, String? message});
}

/// @nodoc
class _$ShowInvoicesStateCopyWithImpl<$Res, $Val extends ShowInvoicesState>
    implements $ShowInvoicesStateCopyWith<$Res> {
  _$ShowInvoicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceModel>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShowInvoicesStateCopyWith<$Res>
    implements $ShowInvoicesStateCopyWith<$Res> {
  factory _$$_ShowInvoicesStateCopyWith(_$_ShowInvoicesState value,
          $Res Function(_$_ShowInvoicesState) then) =
      __$$_ShowInvoicesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<InvoiceModel> items, String? message});
}

/// @nodoc
class __$$_ShowInvoicesStateCopyWithImpl<$Res>
    extends _$ShowInvoicesStateCopyWithImpl<$Res, _$_ShowInvoicesState>
    implements _$$_ShowInvoicesStateCopyWith<$Res> {
  __$$_ShowInvoicesStateCopyWithImpl(
      _$_ShowInvoicesState _value, $Res Function(_$_ShowInvoicesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? items = null,
    Object? message = freezed,
  }) {
    return _then(_$_ShowInvoicesState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceModel>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ShowInvoicesState
    with DiagnosticableTreeMixin
    implements _ShowInvoicesState {
  const _$_ShowInvoicesState(
      {required this.isLoading,
      required final List<InvoiceModel> items,
      this.message})
      : _items = items;

  @override
  final bool isLoading;
  final List<InvoiceModel> _items;
  @override
  List<InvoiceModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowInvoicesState(isLoading: $isLoading, items: $items, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShowInvoicesState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowInvoicesState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_items), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowInvoicesStateCopyWith<_$_ShowInvoicesState> get copyWith =>
      __$$_ShowInvoicesStateCopyWithImpl<_$_ShowInvoicesState>(
          this, _$identity);
}

abstract class _ShowInvoicesState implements ShowInvoicesState {
  const factory _ShowInvoicesState(
      {required final bool isLoading,
      required final List<InvoiceModel> items,
      final String? message}) = _$_ShowInvoicesState;

  @override
  bool get isLoading;
  @override
  List<InvoiceModel> get items;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ShowInvoicesStateCopyWith<_$_ShowInvoicesState> get copyWith =>
      throw _privateConstructorUsedError;
}
