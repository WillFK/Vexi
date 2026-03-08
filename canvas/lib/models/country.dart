import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String code,
    @JsonKey(name: 'full_name_en') required String fullNameEn,
    @JsonKey(name: 'short_name_en') required String shortNameEn,
    @JsonKey(name: 'full_name_local') required String fullNameLocal,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}