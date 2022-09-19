import 'package:flutter/material.dart';
import 'package:shopapp/Utils/Theme.dart';
import 'package:shopapp/view/Widget/Text_Utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onpressed;
  const AuthButton({required this.text, required this.onpressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: mainColor,
        minimumSize: Size(360, 50),
      ),
      onPressed: onpressed,
      child: TextUtils(
          text: text,
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          underline: TextDecoration.none),
    );
  }
}
