import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro_clubs/members_widget.dart';
import 'package:pro_clubs/overview_widget.dart';
import 'package:pro_clubs/table.dart';
import 'package:shifting_tabbar/shifting_tabbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Define a controller for TabBa
      //der and TabBarViews
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          // Use ShiftingTabBar instead of appBar
          appBar: ShiftingTabBar(
            // Specify a color to background or it will pick it from primaryColor of your app ThemeData
            color: Colors.grey,
            // You can change brightness manually to change text color style to dark and light or
            // it will decide based on your background color
            // brightness: Brightness.dark,
            tabs: <ShiftingTab>[
              // Also you should use ShiftingTab widget instead of Tab widget to get shifting animation
              ShiftingTab(
                icon: const Icon(FontAwesomeIcons.futbol),
                text: 'Overview',
              ),
              ShiftingTab(
                icon: const Icon(FontAwesomeIcons.table),
                text: 'Table',
              ),
            ],
          ),
          // Other parts of the app are exacly same as default TabBar widget
          body: TabBarView(
            children: <Widget>[OverviewPage(), SortablePage()],
          ),
        ),
      ),
    );
  }
}
