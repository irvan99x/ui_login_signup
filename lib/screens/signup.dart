import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_login_signup/theme.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 1),
        child: Container(
          height: MediaQuery.of(context).size.height / 1,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    // buildCloseButton(),
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "Images/signup.jpg",
                          cacheHeight: 120,
                          cacheWidth: 200,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        color: Colors.grey,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 5,
                          style: BorderStyle.solid,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey, style: BorderStyle.solid)),
                      labelText: "Email",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_open,
                        color: Colors.grey,
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 5,
                              style: BorderStyle.solid,
                              color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey, style: BorderStyle.solid)),
                      labelText: "Password",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextFormField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phonelink_lock,
                        color: Colors.grey,
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 5,
                              style: BorderStyle.solid,
                              color: Colors.blue)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey, style: BorderStyle.solid)),
                      labelText: "Confirm Password",
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(220, 40),
                          elevation: 5,
                          primary: pinkAccent),
                      onPressed: () {},
                      child: Text(
                        "SIGN UP",
                        style: GoogleFonts.comfortaa(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 5),
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
                      // Text("OR"),
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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     IconButton(
                //         iconSize: 30,
                //         onPressed: null,
                //         icon: Icon(
                //           FontAwesomeIcons.instagram,
                //           color: Colors.blue,
                //         )),
                //     IconButton(
                //         iconSize: 30,
                //         onPressed: null,
                //         icon: Icon(FontAwesomeIcons.facebook,
                //             color: Colors.blue)),
                //     IconButton(
                //         iconSize: 30,
                //         onPressed: null,
                //         icon: Icon(FontAwesomeIcons.googlePlusSquare,
                //             color: Colors.redAccent)),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text("if you haven't any account?"),
                //     TextButton(
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) => LoginPage(),
                //             ),
                //           );
                //         },
                //         child: Text("Sign In")),
                //   ],
                // ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Align buildCloseButton() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            print("Close Button");
          },
          child: CircleAvatar(
            radius: 16,
            backgroundColor: pinkAccent,
            child: Icon(
              Icons.close_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
