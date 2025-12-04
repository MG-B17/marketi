import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi/core/utils/app_color.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/core/utils/app_styles.dart';

class MarketiTextFormFiled extends StatelessWidget {
  const MarketiTextFormFiled({
    super.key,
    required this.validator,
    required this.textEditingController,
    required this.keyboardType,
    this.onChanged,
    this.hideText = false,
    required this.hintText,
    this.showSufixIcon = false,
    required this.prefixIconPath,
    this.onTapSufixIocn,
    this.suffixIcon=Icons.visibility_off
  });
  final String? Function(String? value)? validator;
  final void Function(String value)? onChanged;
  final bool hideText;
  final String hintText;
  final bool showSufixIcon;
  final String prefixIconPath;
  final void Function()? onTapSufixIocn;
  final IconData? suffixIcon ;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: keyboardType,
      style: TextStyle(
        color: AppColor.mainTextColor,
        fontSize: 13.sp,
        fontWeight: FontWeight.w600,
      ),
      obscureText: true,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: SvgPicture.asset(
          prefixIconPath,
          width: 16.w,
          height: 16.h,
          fit: BoxFit.scaleDown,
        ),
        suffixIcon:showSufixIcon? IconButton(
          onPressed:onTapSufixIocn,
          icon: Icon(suffixIcon, color: AppColor.mainTextColor),
        ):const SizedBox(),
        hintText:hintText,
        hintStyle: AppStyles.style12,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.borderColor, width: 2.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.secondaryColor, width: 2.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.errorColor, width: 2.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.secondaryColor, width: 2.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }
}
