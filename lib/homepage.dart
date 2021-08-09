import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro_clubs/playstation4_page.dart';
import 'package:pro_clubs/playstation5_page.dart';
import 'package:pro_clubs/xbox_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            // Text(
            //   "Please select your gaming system",
            //   style: TextStyle(fontSize: 24),
            // ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
