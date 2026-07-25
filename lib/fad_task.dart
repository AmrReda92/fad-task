import 'package:fad_app/core/routes/app_routes.dart';
import 'package:fad_app/core/routes/routes.dart';
import 'package:fad_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FadTask extends StatelessWidget {
  const FadTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fad App',
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.scaffoldBackground,
        ),
        onGenerateRoute: AppRoutes.function,
        initialRoute: Routes.loginScreen,
      ),
    );
  }
}