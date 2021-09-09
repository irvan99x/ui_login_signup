import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_login_signup/screens/login.dart';
import 'package:ui_login_signup/screens/signup.dart';
import 'package:ui_login_signup/screens/welcome.dart';
import 'package:ui_login_signup/theme.dart';

class HomePage extends StatefulWidget {
  late final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool issignedUp;

  @override
  void initState() {
    issignedUp = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.lightBlueAccent,
          pinkColorBold,
          pinkAccent,
          pinkColorBold,
          Colors.lightBlueAccent
        ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 7.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: TextButton(
                        onPressed: () {
                          print("Login");
                          setState(() {
                            issignedUp = true;
                          });
                        },
                        child: Text("LOG IN",
                            style: GoogleFonts.autourOne(
                                color: issignedUp
                                    ? Colors.white
                                    : Colors.grey[500],
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: TextButton(
                        onPressed: () {
                          print("Sign Up");
                          setState(() {
                            issignedUp = false;
                          });
                        },
                        child: Text("SIGN UP",
                            style: GoogleFonts.autourOne(
                                color: issignedUp
                                    ? Colors.grey[500]
                                    : Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
              issignedUp ? LoginPage() : SignUpPage()
            ],
          ),
          floatingActionButton: FloatingActionButton(
              mini: true,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(),
                  ),
                );
              },
              child: Icon(
                Icons.arrow_back,
                color: issignedUp ? Colors.pinkAccent : Colors.white,
              ),
              backgroundColor:
                  issignedUp ? Colors.white : Colors.pinkAccent[500]),
        ),
      ),
    );
  }
}
