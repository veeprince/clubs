import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:pro_clubs/create_user.dart';
import 'package:pro_clubs/root_app.dart';
import 'package:pro_clubs/main.dart';
// import 'package:provider/provider.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  // StreamSubscription<User> loginStateSubscription;
  @override
  void initState() {
    // var authBloc = Provider.of<AuthBloc>(context, listen: false);
    // loginStateSubscription = authBloc.currentUser.listen((fbUser) {
    //   if (fbUser != null) {
    //     Navigator.of(context).pushReplacement(
    //         MaterialPageRoute(builder: (context) => RootApp()));
    //   }
    // });
    // super.initState();
  }

  @override
  void dispose() {
    // loginStateSubscription.cancel();
    // super.dispose();
  }

  Widget build(BuildContext context) {
    // final authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.cover,
        //         image: AssetImage('assets/images/tag_square_1-1300x1300.jpg'))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignInButton(Buttons.Google,
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => CreateUser()))),
              const SizedBox(
                height: 5,
              ),
              // SignInButton(
              //   Buttons.FacebookNew,
              //   onPressed: () => authBloc.loginFacebook(),
              // ),
              const SizedBox(
                height: 5,
              ),
              // SignInButton(
              //   Buttons.AppleDark,
              //   // onPressed: () => authBloc.loginApple(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
