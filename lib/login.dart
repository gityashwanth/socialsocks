import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn googleSignIn = GoogleSignIn(
    clientId:
    "797075318285-e7o0ds2f7l656e8r4vnrtj77f3lj3kid.apps.googleusercontent.com");

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Sign in with Google!",
            style: TextStyle(fontSize: 30),
          ),
          RaisedButton(
            onPressed: () {
              statSignIn();
            },
            child: Text('Tap to sign in'),
          ),
        ],
      ),
    );
  }

  void statSignIn() async{
    GoogleSignInAccount user = await googleSignIn.signIn();
    bool isSignedIn = await googleSignIn.isSignedIn();
    if (isSignedIn) {
      print('user signed in');
      Navigator.pushReplacementNamed(context, '/profile');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

}