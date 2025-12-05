import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/config/navigation/navigation.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/core/utils/widgets/custom_button.dart';
import 'package:marketi/core/utils/widgets/marketi_app_bar.dart';
import 'package:marketi/core/utils/widgets/marketi_text_form_filed.dart';
import 'package:marketi/features/auth/presentation/screens/verification_code_screen.dart';
import 'package:marketi/features/auth/presentation/widgets/image_with_helper_text.dart';

class ForgetPasswordPhone extends StatefulWidget {
  const ForgetPasswordPhone({super.key});

  @override
  State<ForgetPasswordPhone> createState() => _ForgetPasswordPhoneState();
}

class _ForgetPasswordPhoneState extends State<ForgetPasswordPhone> {
  late final TextEditingController phoneController;

  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
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
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Column(
            spacing: 10.h,
            children: [
              ImageWithHelperText(
                helperText: AppStrings.forgetPasswordPhone,
                imagepath:
                    "assets/images/Illustration_Forgot_Password_With_Phone.svg",
              ),
              MarketiTextFormFiled(
                validator: (value) {
                  return null;
                },
                textEditingController: phoneController,
                keyboardType: TextInputType.emailAddress,
                hintText: AppStrings.phoneNumber,
                prefixIconPath: "assets/images/phone.svg",
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
            ],
          ),
        ),
      ),
    );
  }
}
