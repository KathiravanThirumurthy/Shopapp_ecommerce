import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopapp/Utils/Constants.dart';

import '../../Model/login_model.dart';
import '../../Service/LoginService.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  List<LoginModel> _loginmodel = [];
  List<LoginModel> get getloginmodel => _loginmodel;
  RxBool isloginLoad = true.obs;
  //otp
  var loginService = LoginService();
  Future loginController({userName, password}) async {
    print({userName, password});
    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    /*if (username.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter username');
    } else if (password.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter password');
    } else {
      // _loadingBar(context);
    }*/

    try {
      var response = await loginService.loginService(
          username: userName, password: password);

      if (response != null) {
        _sharedPreferences.setString(Constants.authToken, response.token!);
        _sharedPreferences.setString(Constants.userName, userName);
        _sharedPreferences.setString(Constants.password, password);
        _loginmodel.add(response);
        print(response.token!.toString());

        update();
      } else {
        /* isloginLoad(false);
        Fluttertoast.showToast(msg: response!.message.toString());*/
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  // logout
  Future logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    try {
      sharedPreferences.clear().then((value) {
        username.clear();
        password.clear();
        Get.back();
        Get.offNamed('/login');
      });
    } catch (e) {
      rethrow;
    }
  }
}

/*void _loadingBar(BuildContext ctx) {
  showDialog(
      barrierDismissible: false,
      context: ctx,
      builder: (BuildContext context) {
        return const Center(
          child: Loader(),
        );
      });
}*/
