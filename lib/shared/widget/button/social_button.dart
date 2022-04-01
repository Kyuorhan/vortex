import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vortex/shared/themes/app_colors.dart';
import 'package:vortex/shared/themes/app_images.dart';
// import 'package:vortex/shared/themes/app_text_style.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
              child: SizedBox(
                  height: 64,
                  child: Expanded(
                    child: SvgPicture.asset(
                      AppImages.google,
                      height: 42,
                      width: 42,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
