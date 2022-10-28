
import 'package:flutter/material.dart';
import 'package:flutter_ui/constant/color_constant.dart';
import 'package:flutter_ui/constant/padding_constant.dart';
import 'package:flutter_ui/constant/sized_box_constant.dart';
import 'package:flutter_ui/style/text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.obscureText,
    this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final bool? obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: CustomTextStyle.bodyText),
        SizedBoxConstant.instance.height10,
        Container(
          color: ColorConstant.instance.greyColor,
          child: TextField(
            obscureText: obscureText ?? false,
            style: CustomTextStyle.bodyText,
            controller: controller,
            cursorColor: Colors.white,
            decoration: InputDecoration(
                suffixIcon: suffixIcon,
                contentPadding: PaddingConstant.instance.paddingSymnetric16x20,
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
