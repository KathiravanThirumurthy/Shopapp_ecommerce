import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopapp/logic/Controller/signupauth_controller.dart';
import 'package:shopapp/view/Widget/Text_Utils.dart';

class Checkboxwidget extends StatelessWidget {
  final controller = Get.find<AuthController>();
  Checkboxwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (_) => Row(
        children: [
          InkWell(
            onTap: () {
              controller.checkBox();
            },
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: controller.isCheck
                  ? Image.asset("assets/images/check.png")
                  : Container(),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              TextUtils(
                  text: "I accept ",
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  underline: TextDecoration.none),
              TextUtils(
                  text: "terms & conditions",
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  underline: TextDecoration.underline),
            ],
          ),
        ],
      ),
    );
    /*   Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            child:controller.isCheck ? Image.asset("assets/images/check.png") :,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: [
            TextUtils(
                text: "I accept ",
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
                underline: TextDecoration.none),
            TextUtils(
                text: "terms & conditions",
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
                underline: TextDecoration.underline),
          ],
        ),
      ],
    );*/
  }
}
