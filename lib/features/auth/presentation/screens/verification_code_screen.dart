import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/core/utils/app_styles.dart';
import 'package:marketi/core/utils/widgets/custom_button.dart';
import 'package:marketi/core/utils/widgets/marketi_app_bar.dart';
import 'package:marketi/features/auth/presentation/widgets/image_with_helper_text.dart';
import 'package:marketi/features/auth/presentation/widgets/otp_widget.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: marketiAppBar(
        screenTittle: AppStrings.verificationcode,
        context: context,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10.h,
            children: [
              ImageWithHelperText(
                helperText: AppStrings.verificationcodestatment,
                imagepath:
                    "assets/images/Illustration_Verification_Code_With_Phone.svg",
              ),
              OtpWidget(),
              CustomButton(text: AppStrings.verifyCode, onTap: () {}),
              TextButton(
                onPressed: () {},
                child: Text(
                  AppStrings.resendCode,
                  style: AppStyles.style16w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
