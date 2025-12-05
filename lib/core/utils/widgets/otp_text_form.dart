import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/app_color.dart';

class OtpTextForm extends StatefulWidget {
  const OtpTextForm({super.key, required this.controller});
  final TextEditingController controller;
  @override
  State<OtpTextForm> createState() => _OtpTextFormState();
}

class _OtpTextFormState extends State<OtpTextForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.w,
      height: 64.h,
      child: TextFormField(
        controller:widget.controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        maxLength: 1,
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColor.borderColor, width: 2.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColor.secondaryColor, width: 2.w),
          ),
        ),
      ),
    );
  }
}
