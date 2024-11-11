import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:orivios_company_demo/setupp/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Center(
              child: AnimatedSplashScreen(
                duration: 2500,
                splash: "assets/orivios.png",
                nextScreen: login(),
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
