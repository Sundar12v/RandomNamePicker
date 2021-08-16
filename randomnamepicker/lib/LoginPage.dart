import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:randomnamepicker/HexColor.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginPageState();
  }
}

GoogleSignIn _googleSignIn = GoogleSignIn();

class LoginPageState extends State<LoginPage> {
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    super.initState();

    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
      if (_currentUser != null) {
        redirectHomePage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [HexColor("#344E93"), HexColor("#344E93")])),
                child: Column(
                  children: [
                    Expanded(
                        flex: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/ic_user.png'),
                            Align(
                              alignment: Alignment.bottomCenter,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Random Name Picker",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Padding(
                                  padding: EdgeInsets.all(30.0),
                                  child: Text(
                                    "Random Name Picker is a free tool to quickly draw a random name or select multiple random winners by submitting a list of names. This tool can be used select a random task or for lotteries to draw a random winner.",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: HexColor("#EEAA7B"),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Text(
                                        "Sign in",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    onPressed: () {
                                      _handleSignIn();
                                    }),
                              )),
                        )),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ))));
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  void redirectHomePage() {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
