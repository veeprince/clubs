import 'dart:io';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pro_clubs/table.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  File _image;
  var inProcess;
  imgFromCamera() async {
    File image;
    final picker = ImagePicker();
    setState(() {
      inProcess = true;
    });
    final imageFile = await picker.pickImage(source: ImageSource.camera);
    if (imageFile != null) {
      image = File(imageFile.path);
    }

    setState(() {
      _image = image;
      inProcess = false;
    });
  }

  imgFromGallery() async {
    File image;
    final picker = ImagePicker();
    setState(() {
      inProcess = true;
    });
    final imageFile = await picker.pickImage(source: ImageSource.gallery);
    if (imageFile != null) {
      image = File(imageFile.path);
    }

    setState(() {
      _image = image;
      inProcess = false;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(
                    height: 110,
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawerEnableOpenDragGesture: true,
        // extendBodyBehindAppBar: true,

        backgroundColor: Colors.white,
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              child: Row(
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  SizedBox(
                    width: 40,
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showPicker(context);
                    },
                    child: CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.white,
                      child: _image != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.file(
                                _image,
                                // width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.contain,
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100)),
                              width: 100,
                              height: 100,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                              ),
                            ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Club name",
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            Text(
              "Current League",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.start,
            ),
            Text(
              "League Position",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.start,
            ),
            Text(
              "Team Top Scorer",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.start,
            ),
            Text(
              "Assist King",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.start,
            ),

            // height: MediaQuery.of(context).size.height,
          ],
        ));
  }
}
