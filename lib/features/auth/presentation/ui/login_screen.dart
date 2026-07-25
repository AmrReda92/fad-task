import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/custom_elevated_button.dart';
import '../../../../core/shared_widgets/custom_text_form_field.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const LoginHeader(),

                CustomTextFormField(
                  hintText: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  prefixIcon: Icon(Icons.email_outlined),
                ),

                SizedBox(height: 20.h),

                CustomTextFormField(
                  hintText: 'Password',
                  obscureText: true,
                  isPassword: true,
                  textInputAction: TextInputAction.done,
                ),

                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: AppTextStyles.font15MediumPrimary,
                    ),
                  ),
                ),

                SizedBox(height: 24.h),

                CustomElevatedButton(
                  text: 'Login',
                  onPressed: () {},
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}