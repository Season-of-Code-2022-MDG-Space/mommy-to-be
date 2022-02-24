import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Welcome/welcome_screen.dart';
import 'package:mommy_to_be/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
