import 'package:flutter/material.dart';

class CreateClub extends StatefulWidget {
  // final CheckList? checkList;
  // final String? docId;
  // const AddTodoScreen({this.checkList, this.docId});

  @override
  _CreateClubState createState() => _CreateClubState();
}

class _CreateClubState extends State<CreateClub> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController deviceDescriptionController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  @override
  void initState() {
    // if (widget.checkList != null) {
    //   nameController.text = widget.checkList!.name;
    //   jobTitleController.text = widget.checkList!.jobTitle;
    //   deviceDescriptionController.text = widget.checkList!.deviceDescription;
    //   locationController.text = widget.checkList!.deviceLocation;
    //   quantityController.text = widget.checkList!.quantity;
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text("Create a Club"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Club Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              textAlign: TextAlign.center,
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "Enter your Pro Club's Team Name",
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 10.0),

            // Text(
            //   'Manager Name',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontSize: 22.0,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // SizedBox(height: 10.0),
            // TextField(
            //   textAlign: TextAlign.center,
            //   controller: jobTitleController,
            //   decoration: InputDecoration(
            //       hintText: "Enter the team manager's name",
            //       border: OutlineInputBorder()),
            // ),
            SizedBox(height: 10.0),
            Container(
              width: double.maxFinite,
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
                      fontSize: 24,
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

  @override
  void dispose() {
    nameController.dispose();
    jobTitleController.dispose();
    deviceDescriptionController.dispose();
    locationController.dispose();

    quantityController.dispose();
    super.dispose();
  }
}
