import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_login_signup/theme.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height / 1,
        decoration: BoxDecoration(
            color: Colors.pinkAccent[100],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 50, left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "LOGIN !",
                        style: GoogleFonts.concertOne(
                            letterSpacing: 5,
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("Images/login1.png"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, right: 30, left: 30),
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      // borderSide: BorderSide(
                      //   style: BorderStyle.solid,
                      //   color: Colors.transparent
                      // ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 30, left: 30),
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(FontAwesomeIcons.key),
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      // borderSide: BorderSide(style: BorderStyle.solid),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(220, 40),
                        elevation: 5,
                        primary: pinkAccent),
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        height: 2,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ),
                    Text("OR", style: TextStyle(color: Colors.black87),),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        height: 2,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SignInButton(Buttons.Google, onPressed: () {}),
              SizedBox(height: 40,)
            ],
          ),
        ),
      ),
    );
  }
}
