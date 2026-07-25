import 'package:fad_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  static TextStyle get font32BoldBlack => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black
  );

  static TextStyle get font16RegularGrey => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );

  static TextStyle get font16MediumBlack => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black
  );

  static TextStyle get font15RegularLightGrey => TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGrey,
  );

  static TextStyle get font18SemiBoldWhite => TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white
  );

  static TextStyle get font15MediumPrimary => TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static TextStyle get font15RegularBlack => TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black
  );

  static TextStyle get font15BoldPrimary => TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
}