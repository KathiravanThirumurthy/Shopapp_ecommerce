import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shopapp/Utils/Urls.dart';

import '../Model/login_model.dart';

class LoginService {
  Future<LoginModel?> loginService({username, password}) async {
    try {
      var data = {'userName': username ?? '', 'Password': password ?? ''};
      log(data.toString());
      var response = await http.post(Uri.parse(Urls.login), body: data);

      // var jsonresponse = json.decode(response.body);
      var jsonresponse = jsonDecode(response.body);
      log(jsonresponse.toString());

      if (response.statusCode == 200) {
        if (jsonresponse['status'] == 'success') {
          log('successsss');
          // Fluttertoast.showToast(msg: jsonresponse['message']);
          return LoginModel.fromJson(jsonresponse);
        } else {
          //Fluttertoast.showToast(msg: jsonresponse['message']);
        }
      } else {
        //Fluttertoast.showToast(msg: jsonresponse['message']);
        Get.back();
      }
    } catch (e) {
      rethrow;
    }
  }
}
