import 'package:fad_app/core/theme/app_colors.dart';
import 'package:fad_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.width = double.infinity,
    this.borderRadius = 16,
    this.height = 56,
    this.isLoading = false,
  });

  final String text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double width;
  final double borderRadius;
  final bool isLoading;
  final double height;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? AppColors.primary,
          foregroundColor: foregroundColor ?? AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
        ),
        child: isLoading
            ? SizedBox(
          width: 22.w,
          height: 22.w,
          child: const CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.white,
          ),
        )
            : Text(
          text,
          style: AppTextStyles.font18SemiBoldWhite,
        ),
      ),
    );
  }
}