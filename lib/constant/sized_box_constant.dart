import 'package:flutter/cupertino.dart';

class SizedBoxConstant {
  static SizedBoxConstant _instance = SizedBoxConstant._init();
  static SizedBoxConstant get instance => _instance;
  SizedBoxConstant._init();

  final SizedBox height10 = SizedBox(
    height: 10,
  );

  final SizedBox height30 = SizedBox(
    height: 30,
  );final SizedBox height60 = SizedBox(
    height: 60,
  );
}
