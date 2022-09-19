import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/logic/Controller/LoginController.dart';
import 'package:shopapp/view/Widget/Text_Utils.dart';
import 'package:shopapp/view/Widget/auth/AuthTextFormField.dart';

import '../../../logic/Controller/signupauth_controller.dart';
import '../../Widget/auth/AuthButton.dart';
import '../../Widget/auth/Checkbox.dart';

class LoginScreen extends StatelessWidget {
  final loginController = LoginController();
  final controller = Get.find<AuthController>();
  //final controller = Get.put(AuthController());
  final _formKey = GlobalKey<FormState>();
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Login Screen",
              style: TextStyle(
                color: Color(0xffDC2A1F),
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding: EdgeInsets.only(left: 34, right: 25, top: 34),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          TextUtils(
                              text: "LOGIN",
                              fontSize: 20,
                              color: Color(0xffDC2A1F),
                              fontWeight: FontWeight.bold,
                              underline: TextDecoration.none),
                          const SizedBox(
                            width: 3,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      AuthTextFormField(
                        controller: userController,
                        obscureText: false,
                        validator: (value) {},
                        prefixicon: Image.asset("assets/images/user.png"),
                        suffixicon: const Text(""),
                        hinttext: "User Name",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AuthTextFormField(
                        controller: passwordController,
                        obscureText: false,
                        validator: (value) {},
                        prefixicon: Image.asset("assets/images/lock.png"),
                        suffixicon: const Text(""),
                        hinttext: "Password",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextUtils(
                          text: "Forget password",
                          fontSize: 20,
                          color: Color(0xffDC2A1F),
                          fontWeight: FontWeight.bold,
                          underline: TextDecoration.none),
                      const SizedBox(
                        height: 20,
                      ),
                      AuthButton(
                        onpressed: () {
                           String username=userController.text;
                           String password=passwordController.text;
                           loginController.loginController(
                            userName:username,
                            password:password,
                            
                            );
                        },
                        text: "Login",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextUtils(
                          text: "Don't have account ?",
                          fontSize: 20,
                          color: Color(0xffDC2A1F),
                          fontWeight: FontWeight.bold,
                          underline: TextDecoration.none),
                      TextUtils(
                          text: "Create a new account",
                          fontSize: 20,
                          color: Color(0xffDC2A1F),
                          fontWeight: FontWeight.bold,
                          underline: TextDecoration.none),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
