import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/OnBoardingScreens/AuthScreen.dart';

class OnBoard1 extends StatefulWidget {
  @override
  _OnBoard1State createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: ClipRRect(
                child: Image.asset(
                  'Assets/OnBoardAsset1.png',
                  fit: BoxFit.fill,
                  height: 250.0,
                  width: 300.0,
                ),
              )),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Text(
                  'Cultivate Your Creativity',
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(5.0),
                  width: 250,
                  child: Text(
                    'A collection of Articles, Video Lectures, Pathways and Guided Courses to unlock your creativity',
                    textAlign: TextAlign.center,
                  )),
              SizedBox(height: 70.0),
              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.pink[200],
                        primary: Colors.pinkAccent[100],
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        fixedSize: Size(250, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AuthScreen()));
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 18.0),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
