import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:localization_flutter_test/providers/language_provider.dart';
import 'package:localization_flutter_test/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => LanguageProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MyHomePage(),
      locale: context.watch<LanguageProvider>().selectedLocale,
    );
  }
}
