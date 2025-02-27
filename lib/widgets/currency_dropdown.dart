import 'package:flutter/material.dart';

class CurrencyDropdown extends StatelessWidget {
  final String selectedCurrency;
  final Map<String, double> exchangeRates;
  final Function(String) onCurrencyChanged;

  const CurrencyDropdown({
    required this.selectedCurrency,
    required this.exchangeRates,
    required this.onCurrencyChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedCurrency,
      isExpanded: true,
      dropdownColor: Colors.grey[850],
      onChanged: (String? newValue) {
        if (newValue != null) {
          onCurrencyChanged(newValue);
        }
      },
      items:
          exchangeRates.keys.map((String currency) {
            return DropdownMenuItem<String>(
              value: currency,
              child: Text(
                currency,
                style: const TextStyle(color: Colors.white),
              ),
            );
          }).toList(),
    );
  }
}
