import 'package:flutter/material.dart';
import 'package:pro_clubs/clubs.dart';
import 'package:search_page/search_page.dart';

class Xbox extends StatefulWidget {
  @override
  _XboxState createState() => _XboxState();
}

class _XboxState extends State<Xbox> {
  static List<Clubs> people = [
    Clubs('Mike', 'Barron', 64),
    Clubs('Mikel', 'James', 64),
    Clubs('Todd', 'Black', 30),
    Clubs('Ahmad', 'Edwards', 55),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Xbox"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 50, width: 200),
              child: ElevatedButton(
                onPressed: () {
                  return showSearch(
                      context: context,
                      delegate: SearchPage<Clubs>(
                        barTheme: ThemeData(primaryColor: Colors.green),
                        itemStartsWith: true,
                        itemEndsWith: true,
                        // onQueryUpdate: (s) => print(s),
                        items: people,
                        searchLabel: 'Search by Club ID',
                        showItemsOnEmpty: false,
                        failure: Center(
                          child: Text('No Club found :('),
                        ),
                        filter: (person) => [
                          person.name,
                          person.surname,
                          person.age.toString(),
                        ],
                        builder: (person) => ListTile(
                          title: Text(person.name),
                          subtitle: Text(person.surname),
                          trailing: Text('${person.age} yo'),
                        ),
                      ));
                },
                child: Text("Join a Friend's Club"),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(height: 50, width: 200),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Become a Free Agent"),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 50, width: 200),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Create your Club"),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                )),
          ],
        ),
      ),
    );
  }
}
