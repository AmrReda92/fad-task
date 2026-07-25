import 'package:fad_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
            AppImages.facebookIcon,
          height: 34.h,
          width: 34.w,
        ),
        SizedBox(
          width: 22.w,
        ),
        SvgPicture.asset(
          AppImages.googleIcon,
          height: 34.h,
          width: 34.w,
        ),
      ],
    );
  }
}
