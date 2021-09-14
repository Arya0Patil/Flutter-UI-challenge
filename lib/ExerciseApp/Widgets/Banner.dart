import 'package:flutter/material.dart';

class Banner1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
              offset: Offset(0, 45),
              color: Colors.black38.withOpacity(0.18),
              blurRadius: 100.0,
              spreadRadius: 2),
        ],
      ),
      height: 175.0,
      width: 305.0,
      child: Card(
        color: Colors.green[100],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              height: 100.0,
              width: 200.0,
              child: Image.asset(
                'Assets/yoga02.png',
                fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 10.0, 8.0),
                  child: Text(
                    'Calories Burned',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 8.0, 20.0, 8.0),
                  child: Text(
                    '70%',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                )
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: 10,
                width: 250,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.pink[100],
                  valueColor: AlwaysStoppedAnimation(Colors.pink[300]),
                  value: 0.7,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
