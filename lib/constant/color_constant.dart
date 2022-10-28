import 'package:flutter/material.dart';

class ColorConstant {
  static ColorConstant _instance = ColorConstant._init();
  static ColorConstant get instance => _instance;
  ColorConstant._init();

  final Color blackColor = const Color(0xff121515);
  final Color greyColor = Color(0xff1A1E1E);
  final Color whiteColor = Color(0xffF9FAFB);
  final Color greenColor = Color(0xff19A54A);
}
