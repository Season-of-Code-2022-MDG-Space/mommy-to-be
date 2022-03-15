import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/welcome_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      home: WelcomeScreen(),
    );
  }
}
