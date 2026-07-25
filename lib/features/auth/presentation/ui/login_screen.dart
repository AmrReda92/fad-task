import 'package:fad_app/core/routes/routes.dart';
import 'package:fad_app/core/utils/validator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/shared_widgets/custom_divider.dart';
import '../../../../core/shared_widgets/custom_elevated_button.dart';
import '../../../../core/shared_widgets/custom_text_form_field.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../widgets/login_header.dart';
import '../widgets/social_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
 final formKey = GlobalKey<FormState>();

 @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const LoginHeader(),

                  CustomTextFormField(
                    validator: ValidatorService.validateEmail,
                    hintText: 'Email Address',
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    prefixIcon: Icon(Icons.email_outlined),
                  ),

                  SizedBox(height: 20.h),

                  CustomTextFormField(
                    validator: ValidatorService.validatePassword,
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
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                       Navigator.pushReplacementNamed(context, Routes.homeScreen);
                      }
                    },
                  ),

                  SizedBox(height: 40.h),

                  const CustomDivider(),

                  SizedBox(height: 30.h),

                  SocialLogin(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}