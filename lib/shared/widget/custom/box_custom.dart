import 'package:flutter/material.dart';
import 'package:vortex/shared/themes/app_colors.dart';
import 'package:vortex/shared/themes/app_text_style.dart';

class BoxCustom extends StatelessWidget {
  final String label;
  const BoxCustom({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      height: 47,
      width: 245,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 47,
            width: 245,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.background,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.only(
              left: 15,
              right: 155,
              top: 2,
              bottom: 2,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(label, style: TextStyles.captionBackground),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
