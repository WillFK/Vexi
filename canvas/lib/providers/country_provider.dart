import 'package:canvas/api/country_api.dart';
import 'package:canvas/repository/country_repository.dart';
import 'package:canvas/ui/country_list/country_list_ui_state.dart';
import 'package:canvas/ui/country_list/country_list_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countryApiProvider = Provider<CountryApi>((ref) {
  return CountryApi();
});

final countryRepositoryProvider = Provider<CountryRepository>((ref) {
  final api = ref.read(countryApiProvider);
  return CountryRepository(api);
});

final countriesViewModelProvider =
AsyncNotifierProvider<CountryListViewModel, CountryListUiState>(
  CountryListViewModel.new,
);