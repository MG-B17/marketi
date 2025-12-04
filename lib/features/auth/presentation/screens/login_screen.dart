import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/config/navigation/navigation.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/core/utils/widgets/marketi_logo.dart';
import 'package:marketi/core/utils/widgets/text_rich_widget.dart';
import 'package:marketi/features/auth/presentation/screens/sing_up_screen.dart';
import 'package:marketi/features/auth/presentation/widgets/login_form.dart';
import 'package:marketi/features/auth/presentation/widgets/or_continue_with.dart';
import 'package:marketi/features/auth/presentation/widgets/skip_button.dart';
import 'package:marketi/features/auth/presentation/widgets/social_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                SkipButton(),

                Column(
                  spacing: 10.h,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30.h),
                    MarketiLogo(height: 232.h, width: 272.w),
                    LoginForm(),
                    OrContinueWith(),
                    SocialLogin(),
                    TextRichWidget(
                      onTap: () {
                        PushNavigation().customNavigation(
                          context: context,
                          screen: SingUpScreen(),
                        );
                      },
                      hintText: AppStrings.areYouNew,
                      boldText: AppStrings.register,
                    ),
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
