import 'package:flutter/material.dart';
import 'package:flutter_web_demo/ui/shared/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const CustomAppMenu(),
          const Spacer(),
          Expanded(
            child: child,
          ),
          const Spacer(),
        ],
      )),
    );
  }
}
