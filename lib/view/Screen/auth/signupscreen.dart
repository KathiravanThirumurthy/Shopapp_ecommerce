import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/Routes/Routes.dart';
import 'package:shopapp/Utils/Theme.dart';
import 'package:shopapp/Utils/mystring.dart';
import 'package:shopapp/logic/Controller/signupauth_controller.dart';
import 'package:shopapp/view/Widget/Text_Utils.dart';

import '../../Widget/auth/AuthButton.dart';
import '../../Widget/auth/AuthTextFormField.dart';
import '../../Widget/auth/Checkbox.dart';
import '../../Widget/auth/ContainerUnder.dart';

class SignUpScreen extends StatelessWidget {
  //final controller = Get.put(AuthController());
  // final controllers=Get.lazyPut(() => AuthController())
  final controller = Get.find<AuthController>();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //toolbarHeight: 49,
          title: const Center(
            child: Text(
              "Signup Screen",
              style: TextStyle(
                color: Color(0xffDC2A1F),
                fontSize: 20,
              ),
            ),
          ),
          //backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        // backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding: EdgeInsets.only(left: 34, right: 25, top: 34),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            TextUtils(
                                text: "SIGN",
                                fontSize: 20,
                                color: Color(0xffDC2A1F),
                                fontWeight: FontWeight.bold,
                                underline: TextDecoration.none),
                            const SizedBox(
                              width: 3,
                            ),
                            TextUtils(
                                text: "UP",
                                fontSize: 20,
                                color: Color(0xff309D0F),
                                fontWeight: FontWeight.bold,
                                underline: TextDecoration.none),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        AuthTextFormField(
                          controller: nameController,
                          obscureText: false,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !RegExp(validationName).hasMatch(value)) {
                              return 'Please enter Valid name';
                            }
                            return null;
                          },
                          prefixicon: Image.asset("assets/images/user.png"),
                          suffixicon: const Text(""),
                          hinttext: "User Name",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AuthTextFormField(
                          controller: emailController,
                          obscureText: false,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !RegExp(validationEmail).hasMatch(value)) {
                              return 'Please enter Valid Email';
                            } else {
                              return null;
                            }
                          },
                          prefixicon: Image.asset("assets/images/email.png"),
                          suffixicon: const Text(""),
                          hinttext: "Email",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GetBuilder<AuthController>(
                          builder: (_) => AuthTextFormField(
                            controller: passwordController,
                            obscureText: controller.isVisibility,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.toString().length <= 6) {
                                return 'Password should be longer than 6 characters';
                              } else {
                                return null;
                              }
                            },
                            prefixicon: Image.asset("assets/images/lock.png"),
                            suffixicon: IconButton(
                              onPressed: () {
                                controller.visibility();
                              },
                              icon: controller.isVisibility
                                  ? const Icon(
                                      Icons.visibility_off,
                                      color: Colors.black,
                                    )
                                  : const Icon(
                                      Icons.visibility,
                                      color: Colors.black,
                                    ),
                            ),
                            hinttext: "Password",
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Checkboxwidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        AuthButton(
                          onpressed: () {},
                          text: "Sign Up",
                        ),
                      ],
                    ),
                  ),
                ),
                // TextformField(),
              ),
              ContainerUnder(
                text: "Already have an acoount ?",
                textType: "Log In",
                onpressed: () {
                  print("Go to Login");
                  Get.offNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
