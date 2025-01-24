import 'package:flutter/material.dart';

class ThirdSplashScreen extends StatelessWidget {
  const ThirdSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 17, top: 17, right: 17),
        child: Column(
          children: [
            const SizedBox(height: 200),
            Image.asset(
              "images/splash_3.png",
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 30),
            const Text(
              "Free Delivery",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFFED7646),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "We show you the easiest way to shop. Just stay at home with us.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
