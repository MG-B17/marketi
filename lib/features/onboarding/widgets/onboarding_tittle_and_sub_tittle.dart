import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/app_styles.dart';

class OnboardingTittleAndSubTittle extends StatelessWidget {
  const OnboardingTittleAndSubTittle({super.key,required this.tittle,required this.subTittle});

  final String tittle ;
  final String subTittle ;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20.h,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          tittle,
          style: AppStyles.style20SemiBold,
        ),
        Text(
          subTittle,
          textAlign: TextAlign.center,
          style: AppStyles.style14,
        ),
      ],
    );
  }
}
