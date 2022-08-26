import 'package:flutter/material.dart';

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
                children: [
                  Container(
                    width: 250,
                    height: 75,
                    color: Colors.black.withOpacity(0.2),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
