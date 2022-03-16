import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
