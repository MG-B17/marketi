import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi/core/utils/app_color.dart';

class MarketiCircleAvatar extends StatelessWidget {
  const MarketiCircleAvatar({super.key,required this.iconPath,this.onTap});

  final String iconPath;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColor.borderColor),
        ),
        child: SvgPicture.asset(
          iconPath,
          width: 23.w,
          height: 24.h,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
