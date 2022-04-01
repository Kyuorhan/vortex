import 'package:flutter/material.dart';

import 'shared/themes/app_colors.dart';
import 'src/modules/home/home_page.dart';
import 'src/modules/login/login_page.dart';
import 'src/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vortex',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: AppColors.primary,
      ),
      // home: LoginPage(),
      initialRoute: "/login",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }
}
