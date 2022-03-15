import 'package:flutter/material.dart';
import 'package:vortex/src/modules/login/login_page.dart';
//import 'package:vortex/src/modules/splash/splash_page.dart';

import 'shared/themes/app_colors.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vortex',
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      home: const LoginPage(),
    );
  }
}
