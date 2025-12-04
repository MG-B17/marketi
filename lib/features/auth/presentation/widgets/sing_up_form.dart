import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/core/utils/widgets/custom_button.dart';
import 'package:marketi/core/utils/widgets/marketi_text_form_filed.dart';

class SingUpForm extends StatefulWidget {
  const SingUpForm({super.key});

  @override
  State<SingUpForm> createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  late final TextEditingController fullNameController ;
  late final TextEditingController userNameController ;
  late final TextEditingController phoneNumberController ;
  late final TextEditingController emailController ;
  late final TextEditingController passwordController ;
  late final TextEditingController confirmPasswordController ;
  final GlobalKey<FormState> singUpFormkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    fullNameController =TextEditingController();
    userNameController =TextEditingController();
    phoneNumberController =TextEditingController();
    emailController = TextEditingController();
    passwordController =TextEditingController();
    confirmPasswordController =TextEditingController();
  }
  @override
  void dispose() {
    super.dispose();
     fullNameController.dispose();
    userNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: singUpFormkey,
      child: Column(
        spacing: 10.h,
        children: [
          MarketiTextFormFiled(
            validator: (value) {return null;},
            textEditingController: fullNameController,
            keyboardType: TextInputType.name,
            hintText: AppStrings.yourName,
            prefixIconPath: "assets/images/person1.svg",
          ),
          MarketiTextFormFiled(
            validator: (value) {return null;},
            textEditingController: userNameController,
            keyboardType: TextInputType.name,
            hintText: AppStrings.username,
            prefixIconPath: "assets/images/person2.svg",
          ),
          MarketiTextFormFiled(
            validator: (value) {return null;},
            textEditingController: phoneNumberController,
            keyboardType: TextInputType.phone,
            hintText: AppStrings.phoneNumber,
            prefixIconPath: "assets/images/phone.svg",
          ),
          MarketiTextFormFiled(
            validator: (value) {return null;},
            textEditingController: emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: AppStrings.email,
            prefixIconPath: "assets/images/Email_Icon.svg",
          ),
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
          MarketiTextFormFiled(
            validator: (value) {return null;},
            textEditingController: confirmPasswordController,
            showSufixIcon: true,
            onTapSufixIocn: () {},
            keyboardType: TextInputType.visiblePassword,
            hideText: true,
            hintText: AppStrings.confirmPassword,
            prefixIconPath: "assets/images/lock_icon.svg",
          ),
          CustomButton(text: AppStrings.signUp, onTap: (){})
        ],
      ),
    );
  }
}
