import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; // For total height and width of screen

    return Container(
      decoration: BoxDecoration(
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
        ],
      ),
    );
  }
}
