import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

GoogleSignIn googleSignIn = GoogleSignIn(
    clientId:
        "797075318285-e7o0ds2f7l656e8r4vnrtj77f3lj3kid.apps.googleusercontent.com");

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initParse();
  }

  initParse() async {
    await Parse().initialize(
      "MNzzwS1FRyCKmPwvD2mWt7HT2eX70vkSuWLExZl8",
      "https://parseapi.back4app.com",
      masterKey:
          "01tEG5QsBYbAzRWCHOA6R5faJfdvQYP27dFTXmKy", // Required for Back4App and others
      clientKey:
          "fP5BNDJ6WrzShovzTVFUNa5gXyqr0H81Wf2ohgUU", // Required for some setups
      debug: false, // When enabled, prints logs to console
    );
    bool isSignedIn = await googleSignIn.isSignedIn();
    if (isSignedIn) {
      print('user signed in');
      Navigator.pushReplacementNamed(context, '/profile');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Socks! Please sign in',
            ),
          ],
        ),
      ),
    );
  }
}
