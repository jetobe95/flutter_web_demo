import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_demo/providers/counter_provider.dart';
import 'package:flutter_web_demo/ui/shared/custom_flat_button.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({Key? key, required this.base}) : super(key: key);
  final String base;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(base),
      child: const _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Contador Provider',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Contador: ${counterProvider.counter}',
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              title: 'Incrementar',
              onPressed: counterProvider.increment,
            ),
            CustomFlatButton(
              title: 'Decrementar',
              onPressed: counterProvider.decrement,
            ),
          ],
        ),
      ],
    );
  }
}
