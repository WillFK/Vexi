import 'package:canvas/models/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_list_ui_state.freezed.dart';

@freezed
class CountryListUiState with _$CountryListUiState {

  const factory CountryListUiState({
    @Default(<Country>[]) List<Country> items,
    @Default('') String query,
  }) = _CountryListUiState;
}

