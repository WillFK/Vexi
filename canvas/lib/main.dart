import 'package:canvas/ui/country_list/country_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
  };
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
