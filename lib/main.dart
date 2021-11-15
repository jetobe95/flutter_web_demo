import 'package:flutter/material.dart';
import 'package:flutter_web_demo/locator.dart';
import 'package:flutter_web_demo/router/router.dart';
import 'package:flutter_web_demo/services/navigation_service.dart';
import 'package:flutter_web_demo/ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas app',
      initialRoute: '/',
      navigatorKey: locator<NavigationService>().navigatorKey,
      // onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
