import 'package:get/get.dart';
import 'package:shopapp/logic/Controller/signupauth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AuthController());
  }
}
