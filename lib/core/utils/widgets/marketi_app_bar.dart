import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/app_styles.dart';
import 'package:marketi/core/utils/widgets/marketi_circle_avatar.dart';

AppBar marketiAppBar({required String screenTittle ,required BuildContext context}){
  return AppBar(
    toolbarHeight: 48.h,
    title:Text(
      screenTittle,
      style:AppStyles.style16w500,
    ) ,
    leading: MarketiCircleAvatar(onTap:(){
      Navigator.pop(context);
    },iconPath: "assets/images/arrow_back.svg"),
  );
}