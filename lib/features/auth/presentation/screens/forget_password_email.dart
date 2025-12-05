import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/config/navigation/navigation.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/core/utils/app_styles.dart';
import 'package:marketi/core/utils/widgets/custom_button.dart';
import 'package:marketi/core/utils/widgets/marketi_app_bar.dart';
import 'package:marketi/core/utils/widgets/marketi_text_form_filed.dart';
import 'package:marketi/features/auth/presentation/screens/forget_password_phone.dart';
import 'package:marketi/features/auth/presentation/screens/verification_code_screen.dart';
import 'package:marketi/features/auth/presentation/widgets/image_with_helper_text.dart';

class ForgetPasswordEmail extends StatefulWidget {
  const ForgetPasswordEmail({super.key});

  @override
  State<ForgetPasswordEmail> createState() => _ForgetPasswordEmailState();
}

class _ForgetPasswordEmailState extends State<ForgetPasswordEmail> {
  late final TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: marketiAppBar(
        screenTittle: AppStrings.forgetPassword,
        context: context,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            spacing: 10.h,
            children: [
              ImageWithHelperText(
                helperText: AppStrings.forgetPasswordEmail,
                imagepath:
                    "assets/images/Illustration_Forgot_Password_With_Email.svg",
              ),
              MarketiTextFormFiled(
                validator: (value) {
                  return null;
                },
                textEditingController: emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: AppStrings.email,
                prefixIconPath: "assets/images/Email_Icon.svg",
              ),
              CustomButton(
                text: AppStrings.sendCode,
                onTap: () {
                  PushNavigation().customNavigation(
                    context: context,
                    screen: VerificationCodeScreen(),
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  PushNavigation().customNavigation(
                    context: context,
                    screen: ForgetPasswordPhone(),
                  );
                },
                child: Text(
                  AppStrings.tryAnotherWay,
                  style: AppStyles.style16w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
