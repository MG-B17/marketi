import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier{

  bool isLast = false;
  void changeOnboardingScreenIndex({required int index}){
    if(index == 2){
      isLast =true;
      ChangeNotifier();
    }else{
      isLast = false;
      ChangeNotifier();
    }
  }
}