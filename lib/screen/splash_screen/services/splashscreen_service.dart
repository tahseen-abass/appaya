class SplashScreenServices {
  Future<bool> checkLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    return true;
  }
}
