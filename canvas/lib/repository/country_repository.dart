

import '../api/country_api.dart';
import '../models/country.dart';

class CountryRepository {
  final CountryApi api;

  CountryRepository(this.api);

  Future<List<Country>> getCountries() async {
    final list = await api.fetchCountries();

    return list
        .map((item) => Country.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}