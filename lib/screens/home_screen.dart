import 'package:flutter/material.dart';
import 'package:localization_flutter_test/extension/extension_context.dart';
import 'package:localization_flutter_test/providers/language_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(context.localization.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              context.localization.helloWorld,
            ),
            Text(
              context.localization.counter,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<LanguageProvider>().changeSelectedLocale,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
