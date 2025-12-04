import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:marketi/core/utils/app_styles.dart';

class TextRichWidget extends StatelessWidget {
  const TextRichWidget({super.key,required this.onTap,required this.hintText,required this.boldText});

  final void Function()? onTap;
  final String hintText;
  final String boldText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: hintText,
        style: AppStyles.style12,
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: boldText,
            style: AppStyles.style12w500,
          ),
        ],
      ),
    );
  }
}
