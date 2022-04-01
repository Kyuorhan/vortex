import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vortex/shared/themes/app_colors.dart';
//import 'package:vortex/shared/themes/app_colors.dart';
import 'package:vortex/shared/themes/app_images.dart';
import 'package:vortex/shared/themes/app_text_style.dart';
import 'package:vortex/shared/widget/button/signin_button.dart';
import 'package:vortex/shared/widget/button/social_button.dart';
import 'package:vortex/shared/widget/custom/box_custom.dart';
import 'package:vortex/src/modules/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
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
              color: const Color.fromRGBO(17, 21, 25, 1).withOpacity(1),
              offset: const Offset(0, 8),
              spreadRadius: 10,
              blurRadius: 800,
            ),
          ],
        ),
        child: Stack(
          children: [
            SizedBox(
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
              bottom: 50,
              left: 65,
              right: 65,
              top: 0,
              child: SvgPicture.asset(
                AppImages.logoFull,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: size.height * 0.25,
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
              bottom: 10,
              left: 0,
              right: 0,
              top: size.height * 0.52,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SignInButton(text: "SIGN IN", onPressed: () {})],
              ),
            ),
            Positioned.fill(
              top: size.height * 0.62,
              bottom: 15,
              child: SizedBox(
                child: ListTile(
                  title: Center(
                    child: Text.rich(
                      TextSpan(
                        text: "Não possui uma conta? ",
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
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: size.height * 0.70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 100, left: 85, right: 85),
                    child: SocialButton(
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
