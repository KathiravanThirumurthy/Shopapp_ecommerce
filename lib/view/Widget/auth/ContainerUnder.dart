import 'package:flutter/material.dart';
import 'package:shopapp/Utils/Theme.dart';
import 'package:shopapp/view/Widget/Text_Utils.dart';

class ContainerUnder extends StatelessWidget {
  final String text;
  final Function() onpressed;
  final String textType;
  const ContainerUnder(
      {required this.text,
      required this.textType,
      required this.onpressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(
              text: text,
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              underline: TextDecoration.none),
          TextButton(
            onPressed: onpressed,
            child: TextUtils(
                text: textType,
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                underline: TextDecoration.none),
          )
        ],
      ),
    );
  }
}
