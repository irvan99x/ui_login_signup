import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_login_signup/screens/welcome.dart';
import 'package:ui_login_signup/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [pinkAccent,Colors.pinkAccent, pinkAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'Images/splashscreen.png',
                    width: 200,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text('WELCOME !',
                      style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
