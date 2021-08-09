import 'package:flutter/material.dart';
import 'package:pro_clubs/root_app.dart';
import 'package:pro_clubs/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Map<int, Color> color = {
    50: Color.fromRGBO(105, 105, 105, .1),
    100: Color.fromRGBO(105, 105, 105, .2),
    200: Color.fromRGBO(105, 105, 105, .3),
    300: Color.fromRGBO(105, 105, 105, .4),
    400: Color.fromRGBO(105, 105, 79, .5),
    500: Color.fromRGBO(105, 105, 105, .6),
    600: Color.fromRGBO(105, 105, 105, .7),
    700: Color.fromRGBO(105, 105, 105, .8),
    800: Color.fromRGBO(105, 105, 105, .9),
    900: Color.fromRGBO(105, 105, 105, 1),
  };

  @override
  Widget build(BuildContext context) {
    MaterialColor colorCustom = MaterialColor(0xFF464646, color);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      debugShowCheckedModeBanner: false,
      home: AuthenticationScreen(),
    );
  }
}
