import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:pro_clubs/create_user.dart';
// import 'package:pro_clubs/playstation4_page.dart';
// import 'package:pro_clubs/playstation5_page.dart';
// import 'package:pro_clubs/xbox_page.dart';
// import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro_clubs/homepage.dart';
import 'package:pro_clubs/profile_page.dart';
import 'package:pro_clubs/schedule_page.dart';
import 'package:pro_clubs/stats_page.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            HomePage(),
            SchedulePage(),
            StatPage(),
            ProfilePage()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        showElevation: true,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              activeColor: Colors.black,
              inactiveColor: Colors.grey,
              title: Text('Home'),
              icon: Icon(
                FontAwesomeIcons.home,
              ),
              textAlign: TextAlign.center),
          BottomNavyBarItem(
              activeColor: Colors.black,
              inactiveColor: Colors.grey,
              title: Text('Schedule'),
              icon: Icon(
                FontAwesomeIcons.calendarAlt,
              ),
              textAlign: TextAlign.center),
          BottomNavyBarItem(
              activeColor: Colors.black,
              inactiveColor: Colors.grey,
              title: Text('Stats'),
              icon: Icon(
                FontAwesomeIcons.chartBar,
              ),
              textAlign: TextAlign.center),
          BottomNavyBarItem(
              activeColor: Colors.black,
              inactiveColor: Colors.grey,
              title: Text('Profile'),
              icon: Icon(
                FontAwesomeIcons.userCircle,
              ),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
