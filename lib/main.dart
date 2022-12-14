import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/Routes/Approute.dart';
import 'package:shopapp/view/Screen/auth/loginscreen.dart';
import 'package:shopapp/view/Screen/auth/signupscreen.dart';
import 'package:shopapp/view/Screen/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const WelcomScreen(),
      initialRoute: Approute.welcome,
      getPages: Approute.routes,
    );
  }
}
