import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vortex/shared/themes/app_colors.dart';
//import 'package:vortex/shared/themes/app_colors.dart';
import 'package:vortex/shared/themes/app_images.dart';
import 'package:vortex/shared/themes/app_text_style.dart';
import 'package:vortex/shared/widget/button/signin_button.dart';
import 'package:vortex/shared/widget/custom/box_custom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 8),
              color: Color(0xff111519).withOpacity(1),
              spreadRadius: 10,
              blurRadius: 800,
            ),
          ],
        ),
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 0,
              child: Image.asset(
                AppImages.registerBackground,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: size.height * 0.25,
              left: 0,
              right: 0,
              top: 0,
              child: Opacity(
                opacity: 0.45,
                child: SvgPicture.asset(
                  AppImages.loginBackground,
                ),
              ),
            ),
            Positioned(
              bottom: size.height * 0.30,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BoxCustom(label: "LOGIN"),
                  BoxCustom(label: "PASSWORD"),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: size.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SignInButton(text: "SIGN IN", onPressed: () {})],
              ),
            ),
            Positioned.fill(
              top: size.height * 0.65,
              bottom: 15,
              child: SizedBox(
                child: ListTile(
                  title: Center(
                    child: Text.rich(
                      TextSpan(
                        text: "Não possui uma conta?  ",
                        style: TextStyles.buttonBackground,
                        children: [
                          TextSpan(
                            text: "SIGN UP",
                            style: TextStyles.buttonBoldPrimary,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
