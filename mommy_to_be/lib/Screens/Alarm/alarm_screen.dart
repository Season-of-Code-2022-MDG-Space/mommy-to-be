// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Calender/calendarpage.dart';
import 'package:mommy_to_be/Screens/Diary/diary_page.dart';
import 'package:mommy_to_be/Screens/Login/login_screen.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 50.0,
              width: 90.0,
              child: FlatButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Icon(
                  Icons.power_settings_new,
                  size: 40.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(
                  height: 100.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/image 22.png'),
                    backgroundColor: Colors.white,
                    maxRadius: 40.0,
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset(
                "assets/images/image 20back.png",
                height: double.infinity,
                fit: BoxFit.fitHeight,
              ),
              alignment: Alignment.bottomCenter,
            ),
            Container(
              child: Image.asset(
                "assets/images/Rectangle 8.png",
              ),
              alignment: Alignment.center,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      shape: CircleBorder(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Calenderpage(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.navigate_before,
                        size: 50.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    FlatButton(
                      child: Container(
                        child: Image.asset(
                          "assets/icons/Vector-2.png",
                          scale: 0.9,
                        ),
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        FlutterAlarmClock.showAlarms();
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    FlatButton(
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.navigate_next,
                        size: 50.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Diarypage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'ALARM',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Adamina',
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: double.infinity,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
