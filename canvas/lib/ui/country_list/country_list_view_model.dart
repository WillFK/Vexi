import 'dart:async';

import 'package:canvas/providers/country_provider.dart';
import 'package:canvas/repository/country_repository.dart';
import 'package:canvas/ui/country_list/country_list_ui_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountryListViewModel extends AsyncNotifier<CountryListUiState>{

  late final CountryRepository _repository;

  @override
  FutureOr<CountryListUiState> build() async {
    _repository = ref.read(countryRepositoryProvider);

    final countries = await _repository.getCountries();
    return CountryListUiState(
      items: countries
    );
  }

  Future<void> reload() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final countries = await _repository.getCountries();
      return CountryListUiState(
        items: countries,
        query: state.valueOrNull?.query ?? '',
      );
    });
  }

  void setQuery(String query) {
    final current = state.valueOrNull;
    if (current == null) return;

    state = AsyncData(
      current.copyWith(query: query),
    );
  }
}