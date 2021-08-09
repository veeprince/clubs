import 'package:flutter/material.dart';
import 'package:pro_clubs/homepage.dart';
import 'package:pro_clubs/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AuthenticationScreen(),
    );
  }
}
