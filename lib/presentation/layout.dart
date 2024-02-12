//code to create mobile layout when the screen size is less than 600px and desktop layout when the screen size is more than 600px.
import 'package:flutter/material.dart';
import 'package:namfisa/presentation/pages/desktop/login_page.dart';
import 'package:namfisa/presentation/pages/mobile/login_page.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileLoginPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
