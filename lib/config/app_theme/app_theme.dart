import 'package:flutter/material.dart';
import 'package:marketi/core/utils/app_color.dart';

ThemeData appTheme =ThemeData(
  fontFamily: "Poppins",
  primaryColor: AppColor.primaryColor,
  scaffoldBackgroundColor: AppColor.primaryColor,
  appBarTheme: AppBarTheme(
    backgroundColor:AppColor.primaryColor,
  )
);