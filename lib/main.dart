import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/ExerciseApp/HomeScreen.dart';
import 'package:flutter_ui_challenge/OnBoardingScreens/OnBoarding1.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UIs'),
      ),
      body: Container(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBoard1()));
                      },
                      child: Text('OnBoarding Screen1')),
                ),
                Container(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExerciseAppUI()));
                      },
                      child: Text('Exercise App UI')),
                ),
              ]),
        ),
      ),
    );
  }
}
