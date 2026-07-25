import 'package:fad_app/core/theme/app_colors.dart';
import 'package:fad_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.divider,
            thickness: 1.5,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              'or connect with',
              style: AppTextStyles.font15RegularLightGrey,
              textAlign: TextAlign.center,
            ),
          ),

        Expanded(
          child: Divider(
            color: AppColors.divider,
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}