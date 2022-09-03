import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:shopapp/view/Widget/Text_Utils.dart';

import '../../Widget/auth/AuthTextFormField.dart';

class SignUpScreen extends StatelessWidget {
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
          backgroundColor: Colors.white,
          elevation: 2,
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
                        validator: () {},
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
                        validator: () {},
                        prefixicon: Image.asset("assets/images/email.png"),
                        suffixicon: const Text(""),
                        hinttext: "Email",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AuthTextFormField(
                        controller: passwordController,
                        obscureText: true,
                        validator: () {},
                        prefixicon: Image.asset("assets/images/lock.png"),
                        suffixicon: const Text(""),
                        hinttext: "Password",
                      ),
                    ],
                  ),
                ),
                // TextformField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
