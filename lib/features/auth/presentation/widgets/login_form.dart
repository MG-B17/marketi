import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/app_color.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/core/utils/app_styles.dart';
import 'package:marketi/core/utils/widgets/custom_button.dart';
import 'package:marketi/core/utils/widgets/marketi_text_form_filed.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      child: Column(
        children: [
          MarketiTextFormFiled(
            validator: (value) {
              return null;
            },
            textEditingController: emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: AppStrings.userNameOrEmail,
            prefixIconPath: "assets/images/Email_Icon.svg",
          ),
          SizedBox(height: 10.h),
          MarketiTextFormFiled(
            validator: (value) {return null;},
            textEditingController: passwordController,
            showSufixIcon: true,
            onTapSufixIocn: () {},
            keyboardType: TextInputType.visiblePassword,
            hideText: true,
            hintText: AppStrings.password,
            prefixIconPath: "assets/images/lock_icon.svg",
          ),
          Row(
            children: [
              Checkbox(
                value: true,
                activeColor: AppColor.secondaryColor,
                checkColor: AppColor.primaryColor,
                onChanged: (value) {},
              ),
              Text(AppStrings.rememberMe, style: AppStyles.style12),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  AppStrings.forgetPassword,
                  style: AppStyles.style12w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          CustomButton(text: AppStrings.login, onTap: () {}),
        ],
      ),
    );
  }
}
