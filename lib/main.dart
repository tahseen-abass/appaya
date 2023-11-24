import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled/utilities/constants.dart';

import 'app/navigation/app_pages.dart';
import 'app/navigation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ScreenUtilInit(
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Appaya',
            // debugShowMaterialGrid: true,
            debugShowCheckedModeBanner: false,
            getPages: AppPages().pages,
            initialRoute: Routes.splashScreen,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: ColorConstants.brightRed,
                background: Colors.white,
                surface: Colors.white,
              ),
              dividerColor: ColorConstants.dividerColor,
              fontFamily: 'Poppins',
              useMaterial3: true,
              textTheme: const TextTheme(
                bodySmall: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: ColorConstants.blackColor,
                  fontWeight: FontWeight.w400,
                ),
                bodyMedium: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: ColorConstants.blackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              inputDecorationTheme: const InputDecorationTheme(
                errorStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: ColorConstants.kErrorColor,
                  fontWeight: FontWeight.w400,
                ),
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: ColorConstants.lightBlackColor,
                  fontWeight: FontWeight.w400,
                ),
                labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: ColorConstants.mediumBlackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              timePickerTheme: const TimePickerThemeData(
                backgroundColor: ColorConstants.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
