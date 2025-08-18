import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static const TextStyle textStyleBold9 = TextStyle(
    fontFamily: 'bukra',
    fontSize: 9,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle textStyleBold10 = TextStyle(
    fontFamily: 'bukra',
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle textStyleRegular10 = TextStyle(
    fontFamily: 'bukra',
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static const TextStyle textStyleBold16 = TextStyle(
    fontFamily: 'bukra',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );
}
