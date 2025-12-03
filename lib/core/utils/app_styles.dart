import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/app_color.dart';

class AppStyles {
  static TextStyle  style20SemiBold= TextStyle(
    color: AppColor.mainTextColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600
  );

  static TextStyle style14 =TextStyle(
    color: AppColor.mainTextColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500
  );

  static TextStyle style18 =TextStyle(
    fontSize: 18.sp,
    color: AppColor.secondaryTextColor,
    fontWeight:FontWeight.w500
  );
}