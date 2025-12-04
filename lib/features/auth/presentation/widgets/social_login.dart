import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/widgets/marketi_circle_avatar.dart';

class SocialLogin extends StatelessWidget {
   SocialLogin({super.key});

  final List<String> imagePath= ["assets/images/google_icon.svg","assets/images/facebook_icon.svg","assets/images/apple_icon.svg"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            MarketiCircleAvatar(iconPath: imagePath[index]),
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemCount: 3,
        shrinkWrap: true,
      ),
    );
  }
}
