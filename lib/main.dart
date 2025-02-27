import 'package:flutter/material.dart';
import 'widgets/currency_card.dart';

void main() {
  runApp(const CurrencyExchangeApp());
}

class CurrencyExchangeApp extends StatelessWidget {
  const CurrencyExchangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Exchange')),
      body: const Center(child: CurrencyCard()),
    );
  }
}
