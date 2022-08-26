// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopapp/view/Widget/Text_Utils.dart';

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
                  Container(
                    width: 280,
                    height: 57,
                    color: Colors.black.withOpacity(0.4),
                    child: Center(
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
                  Container(
                    width: 195,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 220, 40, 31),
                    ),
                    child: const Center(
                      child: Text(
                        "Getstart",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
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
                        onPressed: () {},
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
