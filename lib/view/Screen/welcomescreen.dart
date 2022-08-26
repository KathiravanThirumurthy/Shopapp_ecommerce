// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/view/Screen/auth/loginscreen.dart';
import 'package:shopapp/view/Widget/Text_Utils.dart';

import '../../Routes/Routes.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                "assets/images/shoppinggirl.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.4),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 223,
                  ),
                  Container(
                    width: 280,
                    height: 57,
                    color: Colors.black.withOpacity(0.4),
                    child: const Center(
                      child: TextUtils(
                          text: "Welcome",
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          underline: TextDecoration.none),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Center(
                    child: Container(
                      width: 280,
                      height: 57,
                      color: Colors.black.withOpacity(0.4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          TextUtils(
                              text: "Cherry shop",
                              fontSize: 30,
                              color: Color.fromARGB(255, 242, 204, 15),
                              fontWeight: FontWeight.bold,
                              underline: TextDecoration.none),
                          TextUtils(
                              text: " App",
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              underline: TextDecoration.none),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 133,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      // Get.to(LoginScreen());
                      //Get.toNamed(Routes.loginScreen);
                      Get.offNamed(Routes.loginScreen);
                    }),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 220, 40, 31),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 40,
                        )),
                    child: TextUtils(
                        text: "Get Start",
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        underline: TextDecoration.none),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextUtils(
                          text: "Don't have an account ?",
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          underline: TextDecoration.none),
                      TextButton(
                        onPressed: () {
                          Get.offNamed(Routes.signupScreen);
                        },
                        child: TextUtils(
                            text: "Signup",
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            underline: TextDecoration.underline),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
