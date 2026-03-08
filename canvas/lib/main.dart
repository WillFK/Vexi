import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'models/country.dart';

const RANDOM_COUNRTY_URL = 'https://raw.githubusercontent.com/WillFK/Vexi/refs/heads/main/data/countries.json';

Future<List<Country>> fetchCountries() async {
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
  final list = decoded['countries'] as List<dynamic>;
  return list
    .map((item) => Country.fromJson(item as Map<String, dynamic>))
    .toList();
}

final countriesProvider = FutureProvider<List<Country>>((ref) async {
  return fetchCountries();
});

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Canvexi",
      theme: ThemeData(useMaterial3: true),
      home: CountriesPage()
    );
  }
}

class CountriesPage extends ConsumerWidget {

  const CountriesPage({super.key});

  String _extractFullName(Country country) {
    return country.fullNameEn == country.fullNameLocal ?
      country.fullNameLocal : '${country.fullNameLocal} (${country.fullNameEn})';
  }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countries = ref.watch(countriesProvider);

    return Scaffold(
      appBar: _bar(),
      body: countries.when(
          data: (items) {
            return ListView.separated(
                itemCount: items.length,
                separatorBuilder: (_, __) => const Divider(height: 1),
                itemBuilder: (context, i) {
                  final c = items[i];
                  return ListTile(
                    title: Text(c.shortNameEn),
                    subtitle: Text(_extractFullName(c)),
                  );
                }
            );
          },
          error: (e, st) {

            debugPrintStack(stackTrace: st);
            return ErrorMessage(onRetry: () => ref.invalidate(countriesProvider));
          },
          loading: () => _bodyLoading()
      ),
    );
  }

  AppBar _bar() {
    return AppBar(title: const Text("Canvexi"));
  }

  Widget _bodyLoading() {
    return const Center(
      child: CircularProgressIndicator()
    );
  }
}

class ErrorMessage extends StatelessWidget {

  final VoidCallback onRetry;

  const ErrorMessage({
    super.key,
    required this.onRetry
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('failed to load!'),
              SizedBox(height: 12),
              ElevatedButton(
                  onPressed: onRetry,
                  child: const Text('Retry')
              )
            ],
          )
      ),
    );
  }
}
