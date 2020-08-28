import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  String title, description;
  SecondScreen({
    this.title,
    this.description,
  });
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(27, 38, 44, 100),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              widget.description,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ]));
  }
}
