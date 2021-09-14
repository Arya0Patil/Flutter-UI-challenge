import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ExerciseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.0),
            width: 120.0,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: Colors.blue[100],
              child: Column(
                children: [
                  Container(
                    height: 125,
                    child: Image.asset('Assets/Exercise03.png'),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 120.0,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: Colors.yellow[100],
              child: Column(
                children: [
                  Container(
                    height: 125,
                    child: Image.asset('Assets/Exercise02.png'),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 120.0,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: Colors.red[100],
            ),
          ),
          Container(
            width: 120.0,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: Colors.green[100],
              child: Column(
                children: [
                  Container(
                    height: 125,
                    child: Image.asset('Assets/Exercise01.png'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
