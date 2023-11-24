
import 'package:get/get.dart';

import '../services/splashscreen_service.dart';

class SplashScreenController extends GetxController {
  SplashScreenServices splashScreenServices = SplashScreenServices();
  @override
  void onInit() {
    // checkLogin();
    super.onInit();
  }

  // checkLogin() async {
  //   await splashScreenServices.checkLogin();
  //   bool isLoggedIn = await LocalDBServices.getLoginStatus();
  //   if (isLoggedIn) {
  //     UserCoreDetails().userId = await LocalDBServices.getUserId();
  //     String? userType = await LocalDBServices.getUserType();
  //     UserCoreDetails().setUserType(userType ?? UserType.buyer.label);
  //
  //     // DashBoard Navigation
  //     LocalDBServices.letNavigate();
  //   } else {
  //     Get.offNamed(Routes.loginScreen);
  //   }
  // }
}
