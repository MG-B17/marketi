import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi/core/utils/app_styles.dart';

class ImageWithHelperText extends StatelessWidget {
  const ImageWithHelperText({
    super.key,
    required this.helperText,
    required this.imagepath,
  });

  final String helperText, imagepath;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        SvgPicture.asset(
          imagepath,
          width: double.infinity,
          height: 256.h,
          fit: BoxFit.scaleDown,
        ),
        Text(
          helperText,
          textAlign: TextAlign.center,
          style: AppStyles.style16w500,
        ),
      ],
    );
  }
}
