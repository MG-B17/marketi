import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/widgets/marketi_circle_avatar.dart';
import 'package:marketi/core/utils/widgets/marketi_logo.dart';
import 'package:marketi/features/auth/presentation/widgets/or_continue_with.dart';
import 'package:marketi/features/auth/presentation/widgets/sing_up_form.dart';
import 'package:marketi/features/auth/presentation/widgets/social_login.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                MarketiCircleAvatar(
                  iconPath: "assets/images/arrow_back.svg",
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Column(
                  spacing: 10.h,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MarketiLogo(height: 160.h, width: 187.w),
                    SingUpForm(),
                    OrContinueWith(),
                    SocialLogin(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
