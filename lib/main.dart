import 'package:flutter/material.dart';
import 'package:social_socks/MyHomePage.dart';
import 'package:social_socks/login.dart';
import 'package:social_socks/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (_) => MyHomePage(),
        '/login': (_) => LoginScreen(),
        '/profile': (_) => ProfileScreen(),
      },
    );
  }
}

