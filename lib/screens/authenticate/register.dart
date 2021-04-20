import 'package:brew_flutter/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('SignUp'),
        actions: <Widget>[
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.green;
                  return Colors.brown[400];
                },
              )),
              child: Text(
                'SignIn',
                style: TextStyle(),
              ))
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                    onPressed: () async {
                      print('Password ' + password);
                      print('Email ' + email);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.green;
                        return Colors.blueAccent[200];
                      },
                    )))
              ],
            ),
          )),
    );
  }
}
