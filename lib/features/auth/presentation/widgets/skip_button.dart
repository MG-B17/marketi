import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/app_color.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/core/utils/app_styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 55.w,
        height: 44.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.borderColor),
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Center(
          child: Text(AppStrings.skip, style: AppStyles.style16w600),
        ),
      ),
    );
  }
}
