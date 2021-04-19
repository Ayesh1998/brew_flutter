import 'package:brew_flutter/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('SignIn'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
        child: ElevatedButton(
          child: Text('Signin anonymously'),
          onPressed: () async {
            // dynamic result = await _auth.signInAnon();
            // if (result == null) {
            //   print('error login');
            // } else {
            //   print('error login');
            //   print(result);
            // }
          },
        ),
      ),
    );
  }
}
