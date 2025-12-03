import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi/core/utils/app_strings.dart';
import 'package:marketi/features/onboarding/controller/onboarding_provider.dart';
import 'package:marketi/features/onboarding/widgets/dot_indcator.dart';
import 'package:marketi/features/onboarding/widgets/onboarding_tittle_and_sub_tittle.dart';
import 'package:provider/provider.dart';

class OnboardingPageView extends StatelessWidget {
  OnboardingPageView({super.key,required this.pageController});
  final PageController pageController;
  final List<String> onboardingImages = [
    "assets/images/Illustration_Onboarding_1.svg",
    "assets/images/Illustration_Onboarding_2.svg",
    "assets/images/Illustration_Onboarding_3.svg",
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: onboardingImages.length,
        controller: pageController,
        physics:const NeverScrollableScrollPhysics(),
        onPageChanged:(index){
          Provider.of<OnboardingProvider>(context,listen: false).changeOnboardingScreenIndex(index: index);
        } ,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20.h,
          children: [
            SvgPicture.asset(
              onboardingImages[index],
              width:double.infinity,
              height: 258.h,
              fit: BoxFit.scaleDown,
            ),
            DotIndcator(
              length: onboardingImages.length,
              pageController: pageController,
            ),
            OnboardingTittleAndSubTittle(
              tittle: AppStrings.onboardingTittle[index],
              subTittle: AppStrings.onboardingSubTittle[index],
            ),
          ],
        ),
      ),
    );
  }
}
