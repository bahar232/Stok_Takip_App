// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'materials_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MaterialsState {
  String? get message => throw _privateConstructorUsedError;
  List<MaterialModel> get items => throw _privateConstructorUsedError;
  List<MaterialModel> get filteredItems => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  bool get isSearchBarVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaterialsStateCopyWith<MaterialsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialsStateCopyWith<$Res> {
  factory $MaterialsStateCopyWith(
          MaterialsState value, $Res Function(MaterialsState) then) =
      _$MaterialsStateCopyWithImpl<$Res, MaterialsState>;
  @useResult
  $Res call(
      {String? message,
      List<MaterialModel> items,
      List<MaterialModel> filteredItems,
      bool isLoading,
      String searchQuery,
      bool isSearchBarVisible});
}

/// @nodoc
class _$MaterialsStateCopyWithImpl<$Res, $Val extends MaterialsState>
    implements $MaterialsStateCopyWith<$Res> {
  _$MaterialsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? items = null,
    Object? filteredItems = null,
    Object? isLoading = null,
    Object? searchQuery = null,
    Object? isSearchBarVisible = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>,
      filteredItems: null == filteredItems
          ? _value.filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      isSearchBarVisible: null == isSearchBarVisible
          ? _value.isSearchBarVisible
          : isSearchBarVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MaterialsStateCopyWith<$Res>
    implements $MaterialsStateCopyWith<$Res> {
  factory _$$_MaterialsStateCopyWith(
          _$_MaterialsState value, $Res Function(_$_MaterialsState) then) =
      __$$_MaterialsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      List<MaterialModel> items,
      List<MaterialModel> filteredItems,
      bool isLoading,
      String searchQuery,
      bool isSearchBarVisible});
}

/// @nodoc
class __$$_MaterialsStateCopyWithImpl<$Res>
    extends _$MaterialsStateCopyWithImpl<$Res, _$_MaterialsState>
    implements _$$_MaterialsStateCopyWith<$Res> {
  __$$_MaterialsStateCopyWithImpl(
      _$_MaterialsState _value, $Res Function(_$_MaterialsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? items = null,
    Object? filteredItems = null,
    Object? isLoading = null,
    Object? searchQuery = null,
    Object? isSearchBarVisible = null,
  }) {
    return _then(_$_MaterialsState(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>,
      filteredItems: null == filteredItems
          ? _value._filteredItems
          : filteredItems // ignore: cast_nullable_to_non_nullable
              as List<MaterialModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      isSearchBarVisible: null == isSearchBarVisible
          ? _value.isSearchBarVisible
          : isSearchBarVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MaterialsState extends _MaterialsState with DiagnosticableTreeMixin {
  const _$_MaterialsState(
      {this.message,
      required final List<MaterialModel> items,
      required final List<MaterialModel> filteredItems,
      required this.isLoading,
      required this.searchQuery,
      required this.isSearchBarVisible})
      : _items = items,
        _filteredItems = filteredItems,
        super._();

  @override
  final String? message;
  final List<MaterialModel> _items;
  @override
  List<MaterialModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<MaterialModel> _filteredItems;
  @override
  List<MaterialModel> get filteredItems {
    if (_filteredItems is EqualUnmodifiableListView) return _filteredItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredItems);
  }

  @override
  final bool isLoading;
  @override
  final String searchQuery;
  @override
  final bool isSearchBarVisible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MaterialsState(message: $message, items: $items, filteredItems: $filteredItems, isLoading: $isLoading, searchQuery: $searchQuery, isSearchBarVisible: $isSearchBarVisible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MaterialsState'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('filteredItems', filteredItems))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('searchQuery', searchQuery))
      ..add(DiagnosticsProperty('isSearchBarVisible', isSearchBarVisible));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaterialsState &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._filteredItems, _filteredItems) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.isSearchBarVisible, isSearchBarVisible) ||
                other.isSearchBarVisible == isSearchBarVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_filteredItems),
      isLoading,
      searchQuery,
      isSearchBarVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaterialsStateCopyWith<_$_MaterialsState> get copyWith =>
      __$$_MaterialsStateCopyWithImpl<_$_MaterialsState>(this, _$identity);
}

abstract class _MaterialsState extends MaterialsState {
  const factory _MaterialsState(
      {final String? message,
      required final List<MaterialModel> items,
      required final List<MaterialModel> filteredItems,
      required final bool isLoading,
      required final String searchQuery,
      required final bool isSearchBarVisible}) = _$_MaterialsState;
  const _MaterialsState._() : super._();

  @override
  String? get message;
  @override
  List<MaterialModel> get items;
  @override
  List<MaterialModel> get filteredItems;
  @override
  bool get isLoading;
  @override
  String get searchQuery;
  @override
  bool get isSearchBarVisible;
  @override
  @JsonKey(ignore: true)
  _$$_MaterialsStateCopyWith<_$_MaterialsState> get copyWith =>
      throw _privateConstructorUsedError;
}
