
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/navigation/routes.dart';
import '../../../utilities/constants.dart';
import '../controller/splashscreen_controller.dart';


class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});
  static const route = Routes.splashScreen;
  static GetPage page = GetPage(
      name: SplashScreen.route,
      page: SplashScreen.new,
      binding: BindingsBuilder.put(() => SplashScreenController()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Align(
              alignment: Alignment.bottomCenter,
              // child: Image.asset(
              //   AssetConstants.logoWithText,
              // ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Center(
              // child: Image.asset(
              //   AssetConstants.loaderGif,
              //   height: 87,
              //   width: 87,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
