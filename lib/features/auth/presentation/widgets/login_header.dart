import 'package:fad_app/core/constants/app_images.dart';
import 'package:fad_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 16.h),

        SvgPicture.asset(
            AppImages.loginLogo,
          width: 50.w,
          height: 50.h,
        ),

        SizedBox(height: 24.h),
        Text(
          'Welcome Back!',
          style: AppTextStyles.font32BoldBlack,
        ),

        SizedBox(height: 8.h),

        Text(
          'Glad to see you again.',
          style: AppTextStyles.font16MediumBlack,
        ),

        SizedBox(height: 4.h),

        Text(
          'Login to your account below',
          style: AppTextStyles.font16MediumBlack,
        ),

        SizedBox(height: 32.h),
      ],
    );
  }
}