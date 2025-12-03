import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/config/navigation/navigation.dart';
import 'package:marketi/core/helper/cache_helper/sharde_prefrences.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/core/utils/app_variables.dart';
import 'package:marketi/core/utils/widgets/custom_button.dart';
import 'package:marketi/features/auth/presentation/screens/login_screen.dart';
import 'package:marketi/features/onboarding/controller/onboarding_provider.dart';
import 'package:marketi/features/onboarding/widgets/onboarding_page_view.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatefulWidget {
 const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context)=>OnboardingProvider(),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
            child: Column(
              children: [
                OnboardingPageView(pageController: pageController),
                Consumer<OnboardingProvider>(
                    builder: (context, provider, child) => CustomButton(text: AppStrings.next, onTap: () {
                      if(provider.isLast){
                        PushNavigation().customNavigation(context: context, screen:LoginScreen());
                        CacheHelper.setData(key: AppVariables.isUserSeeOnboardingKey, value: true);
                      }else{
                        pageController.nextPage(duration: const Duration(milliseconds: 650), curve:Curves.fastEaseInToSlowEaseOut);
                      }
                    }),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
