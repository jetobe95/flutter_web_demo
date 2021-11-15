import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.color = Colors.pink,
  }) : super(key: key);
  final String title;
  final Color color;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: color),
      onPressed: () => onPressed(),
      child:  Padding(
        padding: const EdgeInsets.all(10),
        child: Text(title),
      ),
    );
  }
}
