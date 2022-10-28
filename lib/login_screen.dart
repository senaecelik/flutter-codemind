import 'package:flutter/material.dart';
import 'package:flutter_ui/constant/color_constant.dart';
import 'package:flutter_ui/constant/padding_constant.dart';
import 'package:flutter_ui/constant/sized_box_constant.dart';
import 'package:flutter_ui/constant/string_constant.dart';
import 'package:flutter_ui/style/text_style.dart';
import 'package:flutter_ui/widget/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    emailController.text = StringConstant.emailControllerText;
    emailController.selection = TextSelection.fromPosition(
        TextPosition(offset: emailController.text.length));

    passwordController.text = StringConstant.passwordControllerText;
    passwordController.selection = TextSelection.fromPosition(
        TextPosition(offset: passwordController.text.length));

    return Scaffold(
      body: _buildLoginBody(context, emailController, passwordController),
      bottomNavigationBar: _buildLoginBottomAppBar(),
    );
  }

  Container _buildLoginBody(
      BuildContext context,
      TextEditingController emailController,
      TextEditingController passwordController) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(StringConstant.imagePath))),
      child: _buildLoginColumn(emailController, passwordController),
    );
  }

  Padding _buildLoginColumn(TextEditingController emailController,
      TextEditingController passwordController) {
    return Padding(
      padding: PaddingConstant.instance.paddingTop150,
      child: Container(
        decoration: BoxDecoration(color: ColorConstant.instance.blackColor),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: PaddingConstant.instance.paddingSymnetric30x50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstant.login,
                      style: CustomTextStyle.headText,
                    ),
                    Text(StringConstant.signToYourAccount,
                        style: CustomTextStyle.bodyText),
                    SizedBoxConstant.instance.height60,
                    CustomTextField(
                        labelText: StringConstant.yourEmail,
                        controller: emailController),
                    SizedBoxConstant.instance.height30,
                    CustomTextField(
                      labelText: StringConstant.password,
                      controller: passwordController,
                      obscureText: true,
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: ColorConstant.instance.whiteColor,
                      ),
                    ),
                    SizedBoxConstant.instance.height30,
                    Text(
                      StringConstant.forgotPassword,
                      style: CustomTextStyle.bodyTextMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomAppBar _buildLoginBottomAppBar() {
    return BottomAppBar(
      color: ColorConstant.instance.greenColor,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: ColorConstant.instance.greenColor,
              textStyle: CustomTextStyle.bodyText),
          onPressed: () {},
          child: const Text(StringConstant.login)),
    );
  }
}
