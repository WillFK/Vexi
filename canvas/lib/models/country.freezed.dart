// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name_en')
  String get fullNameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_name_en')
  String get shortNameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name_local')
  String get fullNameLocal => throw _privateConstructorUsedError;

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({
    String code,
    @JsonKey(name: 'full_name_en') String fullNameEn,
    @JsonKey(name: 'short_name_en') String shortNameEn,
    @JsonKey(name: 'full_name_local') String fullNameLocal,
  });
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? fullNameEn = null,
    Object? shortNameEn = null,
    Object? fullNameLocal = null,
  }) {
    return _then(
      _value.copyWith(
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            fullNameEn: null == fullNameEn
                ? _value.fullNameEn
                : fullNameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            shortNameEn: null == shortNameEn
                ? _value.shortNameEn
                : shortNameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            fullNameLocal: null == fullNameLocal
                ? _value.fullNameLocal
                : fullNameLocal // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
    _$CountryImpl value,
    $Res Function(_$CountryImpl) then,
  ) = __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    @JsonKey(name: 'full_name_en') String fullNameEn,
    @JsonKey(name: 'short_name_en') String shortNameEn,
    @JsonKey(name: 'full_name_local') String fullNameLocal,
  });
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
    _$CountryImpl _value,
    $Res Function(_$CountryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? fullNameEn = null,
    Object? shortNameEn = null,
    Object? fullNameLocal = null,
  }) {
    return _then(
      _$CountryImpl(
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        fullNameEn: null == fullNameEn
            ? _value.fullNameEn
            : fullNameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        shortNameEn: null == shortNameEn
            ? _value.shortNameEn
            : shortNameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        fullNameLocal: null == fullNameLocal
            ? _value.fullNameLocal
            : fullNameLocal // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  const _$CountryImpl({
    required this.code,
    @JsonKey(name: 'full_name_en') required this.fullNameEn,
    @JsonKey(name: 'short_name_en') required this.shortNameEn,
    @JsonKey(name: 'full_name_local') required this.fullNameLocal,
  });

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  final String code;
  @override
  @JsonKey(name: 'full_name_en')
  final String fullNameEn;
  @override
  @JsonKey(name: 'short_name_en')
  final String shortNameEn;
  @override
  @JsonKey(name: 'full_name_local')
  final String fullNameLocal;

  @override
  String toString() {
    return 'Country(code: $code, fullNameEn: $fullNameEn, shortNameEn: $shortNameEn, fullNameLocal: $fullNameLocal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.fullNameEn, fullNameEn) ||
                other.fullNameEn == fullNameEn) &&
            (identical(other.shortNameEn, shortNameEn) ||
                other.shortNameEn == shortNameEn) &&
            (identical(other.fullNameLocal, fullNameLocal) ||
                other.fullNameLocal == fullNameLocal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, fullNameEn, shortNameEn, fullNameLocal);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(this);
  }
}

abstract class _Country implements Country {
  const factory _Country({
    required final String code,
    @JsonKey(name: 'full_name_en') required final String fullNameEn,
    @JsonKey(name: 'short_name_en') required final String shortNameEn,
    @JsonKey(name: 'full_name_local') required final String fullNameLocal,
  }) = _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  String get code;
  @override
  @JsonKey(name: 'full_name_en')
  String get fullNameEn;
  @override
  @JsonKey(name: 'short_name_en')
  String get shortNameEn;
  @override
  @JsonKey(name: 'full_name_local')
  String get fullNameLocal;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
