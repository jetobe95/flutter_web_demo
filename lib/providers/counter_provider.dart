import 'package:flutter/material.dart' show ChangeNotifier;

class CounterProvider extends ChangeNotifier {
  CounterProvider(String base) {
    if (int.tryParse(base) != null) {
      _counter = int.parse(base);
    }
  }
  int _counter = 15;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
