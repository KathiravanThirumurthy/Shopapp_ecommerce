import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shopapp/view/Screen/welcomescreen.dart';
import '../view/Screen/auth/forgetpassword.dart';
import '../view/Screen/auth/loginscreen.dart';
import '../view/Screen/auth/settingscreen.dart';
import '../view/Screen/auth/signupscreen.dart';
import './Routes.dart';

class Approute {
  // intial route
  static const welcome = Routes.welcomeScreen;
  // route getpages

  static final routes = [
    GetPage(name: Routes.welcomeScreen, page: () => const WelcomScreen()),
    GetPage(name: Routes.loginScreen, page: () => const LoginScreen()),
    GetPage(name: Routes.signupScreen, page: () => SignUpScreen()),
    GetPage(name: Routes.settingScreen, page: () => const SettingScreen()),
    GetPage(
        name: Routes.forgetpasswordScreen,
        page: () => const ForgetPasswordScreen()),
  ];
}
