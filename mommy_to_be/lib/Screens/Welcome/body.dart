// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // For total height and width of screen

    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Android Small - 11 (1).png"),
            fit: BoxFit.cover,
          ),
        ),
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 100,
              child: Image.asset(
                "assets/images/Hey MOMMY!.png",
              ),
            ),
            Positioned(
              top: 250,
              child: Image.asset(
                "assets/images/Are you ready to experience something beautiful_.png",
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: ClipRRect(
                child: FlatButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
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
                    "YES",
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 1, 1),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
