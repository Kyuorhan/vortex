import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vortex/shared/themes/app_colors.dart';
import 'package:vortex/shared/themes/app_images.dart';

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
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 27, 33, 37), Color(0xFF30373c)],
                ),
              ),
            ),
            Stack(
              children: [
                Expanded(
                  child: Opacity(
                    opacity: 0.35,
                    child: SvgPicture.asset(
                      AppImages.loginBackground,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 8),
                          color: Color(0x4960F9).withOpacity(.9),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
