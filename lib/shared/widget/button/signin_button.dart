import 'package:flutter/material.dart';
import 'package:vortex/shared/themes/app_colors.dart';
import 'package:vortex/shared/themes/app_text_style.dart';

class SignInButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const SignInButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF6F58FF);
    const secondaryColor = Color(0xFF6F58FF);

    const double borderRadius = 10;

    return DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 8),
              color: AppColors.flourishing.withOpacity(1),
              spreadRadius: 5,
              blurRadius: 600,
            ),
          ],
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: const LinearGradient(
            colors: [primaryColor, secondaryColor],
          ),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              padding: MaterialStateProperty.all(const EdgeInsets.only(
                  right: 100, left: 100, top: 12, bottom: 13)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyles.titleRegular,
            // style: const TextStyle(color: accentColor,  fontSize: TextStyles()),
          ),
        ));
  }
}
