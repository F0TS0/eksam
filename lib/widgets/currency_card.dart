import 'package:flutter/material.dart';
import 'currency_dropdown.dart';

class CurrencyCard extends StatefulWidget {
  const CurrencyCard({super.key});

  @override
  State<CurrencyCard> createState() => _CurrencyCardState();
}

class _CurrencyCardState extends State<CurrencyCard> {
  String selectedCurrency = 'USD'; // Default currency
  final Map<String, double> exchangeRates = {
    'USD': 1.0,
    'EUR': 0.91,
    'GBP': 0.79,
    'JPY': 150.3,
  };

  void _onCurrencyChanged(String newCurrency) {
    setState(() {
      selectedCurrency = newCurrency;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900], // Dark theme
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Select Currency',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            CurrencyDropdown(
              selectedCurrency: selectedCurrency,
              exchangeRates: exchangeRates,
              onCurrencyChanged: _onCurrencyChanged,
            ),
            const SizedBox(height: 10),
            Text(
              'Exchange Rate: ${exchangeRates[selectedCurrency].toString()}',
              style: const TextStyle(fontSize: 16, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
