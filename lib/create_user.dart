import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro_clubs/root_app.dart';
import 'package:pro_clubs/playstation4_page.dart';
import 'package:pro_clubs/playstation5_page.dart';
import 'package:pro_clubs/selection_index.dart';
import 'package:pro_clubs/xbox_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:direct_select/direct_select.dart';

class CreateUser extends StatefulWidget {
  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final elements = [
    "GK",
    "LCB",
    "RCB",
    "LB",
    "RB",
    "CDM",
    "CM",
    "CAM",
    "LW",
    "RW",
    "ST",
  ];

  int selectedIndex = 0;
  List<Widget> _buildItems() {
    return elements
        .map((val) => MySelectionItem(
              title: val,
            ))
        .toList();
  }

  String _selectedConsole = '';
  TextEditingController gamerTagController = TextEditingController();
  TextEditingController playerRatingController = TextEditingController();
  TextEditingController goalController = TextEditingController();
  TextEditingController assistController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a User"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              "Enter your gamer tag",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300,
              height: 55,
              child: TextField(
                textAlign: TextAlign.center,
                controller: gamerTagController,
                decoration: InputDecoration(
                    hintText: "Enter your Console Gamer Tag",
                    border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.red, width: 50)
                        )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Select your gaming system",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  activeColor: Colors.blue[800],
                  value: 'PS4',
                  groupValue: _selectedConsole,
                  onChanged: (value) {
                    setState(() {
                      _selectedConsole = value;
                    });
                  },
                ),
                Icon(
                  FontAwesomeIcons.playstation,
                  color: Colors.blue[800],
                ),
                SizedBox(
                  width: 10,
                ),
                Text("PS4"),
                Radio(
                  activeColor: Colors.black,
                  value: 'PS5',
                  groupValue: _selectedConsole,
                  onChanged: (value) {
                    setState(() {
                      _selectedConsole = value;
                    });
                  },
                ),
                Icon(
                  FontAwesomeIcons.playstation,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("PS5"),
                Radio(
                  activeColor: Colors.green,
                  value: 'XBOX',
                  groupValue: _selectedConsole,
                  onChanged: (value) {
                    setState(() {
                      _selectedConsole = value;
                    });
                  },
                ),
                Icon(
                  FontAwesomeIcons.playstation,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "XBOX",
                )
              ],
            ),
            Text(
              "Player Position",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300,
              height: 55,
              child: DirectSelect(
                  backgroundColor: Colors.grey[300],
                  itemExtent: 35.0,
                  selectedIndex: selectedIndex,
                  child: MySelectionItem(
                    isForList: false,
                    title: elements[selectedIndex],
                  ),
                  onSelectedItemChanged: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  mode: DirectSelectMode.tap,
                  items: _buildItems()),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              // child: Text(
              //   "Search our database by name",
              //   style:
              //       TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              // ),
            ),
            Text(
              "Player Rating",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300,
              height: 55,
              child: TextField(
                onTap: () {
                  // print(playerPositionController.text);
                },
                textAlign: TextAlign.center,
                controller: playerRatingController,
                decoration: InputDecoration(
                    hintText: "Enter your player overall rating",
                    border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.red, width: 50)
                        )),
              ),
            ),
            Text(
              "Player Goals",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300,
              height: 55,
              child: TextField(
                textAlign: TextAlign.center,
                controller: goalController,
                decoration: InputDecoration(
                    hintText: "Enter the number of goals scored",
                    border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.red, width: 50)
                        )),
              ),
            ),
            Text(
              "Player Assists",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300,
              height: 55,
              child: TextField(
                textAlign: TextAlign.center,
                controller: assistController,
                decoration: InputDecoration(
                    hintText: "Enter the number of assists created",
                    border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.red, width: 50)
                        )),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // backgroundColor: Colors.blue[800],
                  // shape: MaterialStateProperty.all(
                  //   RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  // ),
                ),
                onPressed: () async {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => RootApp()));
                  // FocusScope.of(context).unfocus();
                  // if (nameController.text.trim().isNotEmpty &&
                  //     jobTitleController.text.trim().isNotEmpty &&
                  //     deviceDescriptionController.text.trim().isNotEmpty &&
                  //     locationController.text.trim().isNotEmpty &&
                  //     quantityController.text.trim().isNotEmpty) {
                  //   if (widget.docId != null) {
                  //     await DatabaseHelper.updateChecklist(
                  //         name: nameController.text,
                  //         jobTitle: jobTitleController.text,
                  //         deviceDescription: deviceDescriptionController.text,
                  //         deviceLocation: locationController.text,
                  //         quantity: quantityController.text,
                  //         docId: widget.docId!);
                  //   } else {
                  //     await DatabaseHelper.addCheckList(
                  //       name: nameController.text,
                  //       jobTitle: jobTitleController.text,
                  //       deviceDescription: deviceDescriptionController.text,
                  //       deviceLocation: locationController.text,
                  //       quantity: quantityController.text,
                  //     );
                  //   }
                  //   Navigator.of(context).pop();
                  // }
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text(
                    // widget.docId != null ? 'UPDATE' :
                    'ADD',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
