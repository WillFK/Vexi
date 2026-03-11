
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';
import '../../models/country.dart';

import '../../providers/country_provider.dart';

class CountriesPage extends ConsumerWidget {

  const CountriesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final vmState = ref.watch(countriesViewModelProvider);
    final vm = ref.read(countriesViewModelProvider.notifier);

    return Scaffold(
      appBar: _bar(),
      body: vmState.when(
          data: (state) {
            return ListView.separated(
                itemCount: state.items.length,
                separatorBuilder: (_, __) => const Divider(height: 1),
                itemBuilder: (context, i) {
                  final country = state.items[i];
                  return CountryItem(country: country);
                }
            );
          },
          error: (e, st) {

            debugPrintStack(stackTrace: st);
            return ErrorMessage(onRetry: () => vm.reload());
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

class CountryItem extends StatelessWidget {

  final Country country;

  const CountryItem({
    super.key,
    required this.country
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CountryFlag(
        path: country.flagAsset,
      ),
      title: Text(country.shortNameEn),
      subtitle: Text(country.fullName),
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

class CountryFlag extends StatelessWidget {

  final String path;
  final double width;
  final double height;

  const CountryFlag({
    super.key,
    required this.path,
    this.width = 32,
    this.height = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: width,
      height: height,
      fit: BoxFit.cover,
      errorBuilder: (_, __, ___) {
        return SizedBox(
          width: width,
          height: height,
          child: const Icon(Icons.flag),
        );
      },
    );
  }
}

extension CountryAssets on Country {

  String get fullName => fullNameEn == fullNameLocal ?
    fullNameLocal : '$fullNameLocal ($fullNameEn)';

  String get flagAsset =>
      'assets/flags/${code.toLowerCase()}.png';
}