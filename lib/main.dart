import 'package:flutter/material.dart';
import 'package:todo_app/components/AddNote.dart';
import 'components/Note.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(fontFamily: 'Exo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var list = [];
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddNote(),
                          ));
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
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Text(
                    "What would you do\nif you were'nt afraid?",
                    style: TextStyle(
                        color: Colors.white54,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget showNote(Note n1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
