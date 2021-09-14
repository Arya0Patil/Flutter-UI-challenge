import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/ExerciseApp/Widgets/Banner.dart';
import 'package:flutter_ui_challenge/ExerciseApp/Widgets/ExerciseList.dart';

class ExerciseAppUI extends StatefulWidget {
  @override
  _ExerciseAppUIState createState() => _ExerciseAppUIState();
}

class _ExerciseAppUIState extends State<ExerciseAppUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.green[300]),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        drawer: Drawer(
          child: ListView(
            children: [ListTile(title: Text('hi'))],
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Banner1(),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 55, 20, 10),
                child: Text(
                  'Start your Exercise',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                ),
              ),
              ExerciseList(),
            ],
          ),
        ));
  }
}
