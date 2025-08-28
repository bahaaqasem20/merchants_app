import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'app_colors.dart';

abstract class AppStyles {
  final DateTime _dateTime = DateTime(2023, 8, 22, 11);
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

  static const TextStyle textStyleBold11 = TextStyle(
    fontFamily: 'bukra',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryLight,
  );

  static const TextStyle textStyleBold12 = TextStyle(
    fontFamily: 'bukra',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryLight,
  );

  static const TextStyle textStyleBold13 = TextStyle(
    fontFamily: 'bukra',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryLight,
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

