import 'package:http/http.dart' as http;
import '../models/country.dart';
import 'dart:convert';

class CountryApi {

  static const RANDOM_COUNRTY_URL = 'https://raw.githubusercontent.com/WillFK/Vexi/refs/heads/main/data/countries.json';

  Future<List<dynamic>> fetchCountries() async {
    final uri = Uri.parse(RANDOM_COUNRTY_URL);
    final res = await http.get(
        uri,
        headers: {
          'Accept': 'application/json'
        }
    );

    if (res.statusCode < 200 || res.statusCode >= 300) {
      throw Exception('HTTP ${res.statusCode}: ${res.body}');
    }

    final decoded = jsonDecode(res.body) as Map<String, dynamic>;
    final countries = decoded['countries'];

    return countries;
  }
}