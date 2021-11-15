import 'package:flutter/material.dart';
import 'package:flutter_web_demo/locator.dart';
import 'package:flutter_web_demo/services/navigation_service.dart';
import 'package:flutter_web_demo/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  final NavigationService navigationService = locator();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            CustomFlatButton(
              title: 'Contador Stateful',
              onPressed: () {
                navigationService.navigateTo('/stateful');
              },
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomFlatButton(
              title: 'Contador Provider',
              onPressed: () {
                navigationService.navigateTo('/provider');
              },
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomFlatButton(
              title: 'Otra Página',
              onPressed: () {
                navigationService.navigateTo('/abc123');
              },
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomFlatButton(
              title: 'Stateful 100',
              onPressed: () {
                navigationService.navigateTo('/stateful/100');
              },
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomFlatButton(
              title: 'Provider 200',
              onPressed: () {
                navigationService.navigateTo('/provider?q=200');
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  _MobileMenu({
    Key? key,
  }) : super(key: key);

  final NavigationService navigationService = locator();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFlatButton(
              title: 'Contador Stateful',
              onPressed: () {
                navigationService.navigateTo('/stateful');
              },
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomFlatButton(
              title: 'Contador Provider',
              onPressed: () {
                navigationService.navigateTo('/provider');
              },
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomFlatButton(
              title: 'Otra Página',
              onPressed: () {
                navigationService.navigateTo('/abc123');
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
