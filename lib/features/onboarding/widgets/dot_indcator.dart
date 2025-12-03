import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndcator extends StatelessWidget {
  const DotIndcator({
    super.key,
    required this.length,
    required this.pageController,
  });

  final PageController pageController;
  final int length;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: length,
      axisDirection: Axis.horizontal,
      effect: ScrollingDotsEffect(
        spacing: 8,
        radius: 10.r,
        activeDotScale: .9.w,
        smallDotScale: .1.w,
        dotWidth: 15.w,
        dotHeight: 12.h,
        paintStyle: PaintingStyle.fill,
        dotColor: AppColor.borderColor,
        activeDotColor: AppColor.mainTextColor,
      ),
    );
  }
}
