import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_demo/ui/shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key, required this.base}) : super(key: key);
  final String base;
  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;

  @override
  void initState() {
    super.initState();
    if (int.tryParse(widget.base) != null) {
      counter = int.parse(widget.base);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Contador Stateful',
          style: TextStyle(fontSize: 20),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Contador: $counter',
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
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
            CustomFlatButton(
              title: 'Decrementar',
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
