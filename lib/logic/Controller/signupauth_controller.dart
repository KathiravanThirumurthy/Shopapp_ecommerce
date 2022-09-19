import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isVisibility = false;
  bool isCheck = false;

  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

  void checkBox() {
    isCheck = !isCheck;
    update();
  }
}
