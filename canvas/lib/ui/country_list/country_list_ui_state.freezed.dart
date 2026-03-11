// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_list_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CountryListUiState {
  List<Country> get items => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  /// Create a copy of CountryListUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryListUiStateCopyWith<CountryListUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryListUiStateCopyWith<$Res> {
  factory $CountryListUiStateCopyWith(
    CountryListUiState value,
    $Res Function(CountryListUiState) then,
  ) = _$CountryListUiStateCopyWithImpl<$Res, CountryListUiState>;
  @useResult
  $Res call({List<Country> items, String query});
}

/// @nodoc
class _$CountryListUiStateCopyWithImpl<$Res, $Val extends CountryListUiState>
    implements $CountryListUiStateCopyWith<$Res> {
  _$CountryListUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryListUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? query = null}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<Country>,
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountryListUiStateImplCopyWith<$Res>
    implements $CountryListUiStateCopyWith<$Res> {
  factory _$$CountryListUiStateImplCopyWith(
    _$CountryListUiStateImpl value,
    $Res Function(_$CountryListUiStateImpl) then,
  ) = __$$CountryListUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Country> items, String query});
}

/// @nodoc
class __$$CountryListUiStateImplCopyWithImpl<$Res>
    extends _$CountryListUiStateCopyWithImpl<$Res, _$CountryListUiStateImpl>
    implements _$$CountryListUiStateImplCopyWith<$Res> {
  __$$CountryListUiStateImplCopyWithImpl(
    _$CountryListUiStateImpl _value,
    $Res Function(_$CountryListUiStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CountryListUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? query = null}) {
    return _then(
      _$CountryListUiStateImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<Country>,
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CountryListUiStateImpl implements _CountryListUiState {
  const _$CountryListUiStateImpl({
    final List<Country> items = const <Country>[],
    this.query = '',
  }) : _items = items;

  final List<Country> _items;
  @override
  @JsonKey()
  List<Country> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'CountryListUiState(items: $items, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryListUiStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    query,
  );

  /// Create a copy of CountryListUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryListUiStateImplCopyWith<_$CountryListUiStateImpl> get copyWith =>
      __$$CountryListUiStateImplCopyWithImpl<_$CountryListUiStateImpl>(
        this,
        _$identity,
      );
}

abstract class _CountryListUiState implements CountryListUiState {
  const factory _CountryListUiState({
    final List<Country> items,
    final String query,
  }) = _$CountryListUiStateImpl;

  @override
  List<Country> get items;
  @override
  String get query;

  /// Create a copy of CountryListUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryListUiStateImplCopyWith<_$CountryListUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
