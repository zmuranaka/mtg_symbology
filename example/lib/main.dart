import 'package:flutter/material.dart';
import 'package:mtg_symbology/mtg_symbology.dart';

void main() {
  runApp(const MyApp());
}

/// A simple example app for demonstrating the mtg_symbology package.
class MyApp extends StatelessWidget {
  /// Construct a [MyApp], optionally passing [key].
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return MaterialApp(
      title: 'Mtg Symbology Example App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colorScheme.inversePrimary,
          title: const Text('Mtg Symbology Example App'),
        ),
        body: ListView(
          children: [
            SafeArea(
              child: Wrap(
                children: [
                  for (final symbol in mtgSymbology.entries)
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text(symbol.key),
                          const SizedBox(height: 8),
                          symbol.value.toSvg(),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
