import 'package:flutter/widgets.dart';
import 'package:flutter_ui/constant/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static final TextStyle bodyText = GoogleFonts.karla(
      color: ColorConstant.instance.whiteColor,
      fontSize: 16,
      fontWeight: FontWeight.w400);

  static final TextStyle bodyTextMedium = GoogleFonts.karla(
      color: ColorConstant.instance.whiteColor,
      fontSize: 16,
      fontWeight: FontWeight.w700);

  static final TextStyle headText = GoogleFonts.playfairDisplay(
      fontSize: 24,
      color: ColorConstant.instance.whiteColor,
      fontWeight: FontWeight.w700);
}
