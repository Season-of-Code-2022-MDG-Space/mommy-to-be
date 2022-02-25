// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: ClipRRect(
              child: FlatButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                color: const Color.fromARGB(244, 250, 247, 247),
                shape: const CircleBorder(),
                onPressed: () {},
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
    );
  }
}
