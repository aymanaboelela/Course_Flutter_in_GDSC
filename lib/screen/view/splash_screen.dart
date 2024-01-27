import 'dart:async';
import 'package:course_flutter/screen/view/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        ), //MaterialPageRoute
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(29, 143, 242, 0.1),
          Color.fromRGBO(255, 255, 255, 1),
        ])),
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
