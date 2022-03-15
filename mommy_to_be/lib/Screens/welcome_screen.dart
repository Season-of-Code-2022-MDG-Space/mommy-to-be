import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Vector 1.png",
            height: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Container(
            child: Image.asset("assets/images/image 17.png"),
            alignment: Alignment.bottomLeft,
          ),
          SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '\nHEY MOMMY!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 40,
                    fontFamily: "Akaya_Telivigala",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '\nAre you ready to experience something beautiful?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Akaya_Telivigala",
                    color: Colors.white,
                    fontSize: 38,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            // ignore: deprecated_member_use
            child: FlatButton(
              padding: const EdgeInsets.all(20.0),
              color: const Color.fromARGB(244, 250, 247, 247),
              shape: const CircleBorder(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => LoginScreen()),
                  ),
                );
              },
              child: const Text(
                "yes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
