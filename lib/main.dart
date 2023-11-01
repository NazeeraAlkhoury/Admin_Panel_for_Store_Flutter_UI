import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/routes/app_generate_routes.dart';

import 'package:admin_panel_for_store/core/global/themes/app_light_theme/app_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: AppString.titleApp,
          debugShowCheckedModeBanner: false,
          theme: getLightTheme(),
          onGenerateRoute: (settings) => AppGenerateRoutes.getRoute(settings),
        );
      },
    );
  }
}
