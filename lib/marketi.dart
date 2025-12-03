import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/config/app_theme/app_theme.dart';
import 'package:marketi/features/onboarding/screen/onboarding_screen.dart';

class Marketi extends StatelessWidget {
  const Marketi({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          home:OnboardingScreen(),
        );
      },
    );
  }
}