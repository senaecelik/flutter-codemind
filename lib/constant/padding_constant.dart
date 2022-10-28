import 'package:flutter/widgets.dart';

class PaddingConstant {
  static PaddingConstant _instance = PaddingConstant._init();
  static PaddingConstant get instance => _instance;
  PaddingConstant._init();

  final EdgeInsets paddingSymnetric30x50 =
      const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50);
final EdgeInsets paddingSymnetric16x20 =
      const EdgeInsets.symmetric(horizontal:20.0, vertical: 16);

    final EdgeInsets paddingTop150 =
      const EdgeInsets.only(top: 150.0);


}



