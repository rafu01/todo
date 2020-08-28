import 'package:flutter/material.dart';

import 'Note.dart';
import 'SecondScreen.dart';

var list = [];

class NotesPage extends StatefulWidget {
  NotesPage(String t, String d) {
    Note n1 = Note(title: t, description: d);
    list.add(n1);
  }

  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(27, 38, 44, 100),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Notes',
                      style: TextStyle(
                          fontSize: 30, fontFamily: 'Exo', color: Colors.white),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Icon(
                      Icons.add_box,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 700,
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      Note n1 = list[index];
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondScreen(
                                    title: n1.title,
                                    description: n1.description,
                                  ),
                                ));
                          },
                          child: showNote(n1));
                    }),
              ),
            ],
          ),
        ));
  }

  Widget showNote(Note n1) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.amber[200],
        ),
        child: ListTile(
          title: Text(
            n1.title,
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              n1.description,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}
