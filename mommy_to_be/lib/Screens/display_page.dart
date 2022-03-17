import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  @override
  _MyHomePageState3 createState() => _MyHomePageState3();
}

class _MyHomePageState3 extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                onPressed: null,
                child: Row(
                  children: const [
                    Text(
                      ' Dear Mother,\n Thankyou for registering \n on our app!\n We hope that you have an \n amazing experience with \n "MOMMY-TO-BE !"',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Akaya_Telivigala',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                onPressed: null,
                child: const Text(
                  'NEXT',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
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
