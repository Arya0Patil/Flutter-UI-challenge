import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isLogIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.pink[50],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150.0,
                height: 150.0,
                child:
                    ClipRRect(child: Image.asset('Assets/OnBoardAsset2.png')),
              ),
              Text(!_isLogIn ? 'Create your account' : 'Welcome Back!',
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                  icon: Image.asset(
                    'Assets/googleIcon.png',
                    height: 25.0,
                    width: 25.0,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[700],
                      fixedSize: Size(250, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0))),
                  onPressed: () {},
                  label: Text(
                    !_isLogIn ? 'Sign up with Google' : 'Sign in with Google',
                    style: TextStyle(fontSize: 18.0),
                  )),
              //dividing line
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 100,
                      child: Divider(
                        height: 30,
                        color: Colors.black,
                      )),
                  Text(
                    ' OR ',
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300),
                  ),
                  Container(
                      width: 100,
                      child: Divider(
                        height: 30,
                        color: Colors.black,
                      )),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: 300.0,
                child: Form(
                  child: Column(
                    children: [
                      if (!_isLogIn)
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_rounded),
                              hintText: 'Your Name'),
                        ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            focusColor: Colors.black,
                            prefixIcon: Icon(Icons.mail_outline_rounded),
                            hintText: 'Your Email'),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            hintText: 'Your Password'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.pink[200],
                        primary: Colors.pinkAccent[100],
                        side: BorderSide(
                          color: Colors.black54,
                        ),
                        fixedSize: Size(250, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0))),
                    onPressed: () {
                      setState(() {
                        _isLogIn = !_isLogIn;
                      });
                    },
                    child: Text(
                      _isLogIn ? 'Sign In' : 'Sign Up',
                      style: TextStyle(fontSize: 18.0),
                    )),
              ),
              //SizedBox(height: 5.0),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isLogIn = !_isLogIn;
                    });
                  },
                  child: Text(
                    !_isLogIn
                        ? 'Already have account, Login'
                        : 'Create new account',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  )),
            ],
          )),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('HI'),
    );
  }
}
