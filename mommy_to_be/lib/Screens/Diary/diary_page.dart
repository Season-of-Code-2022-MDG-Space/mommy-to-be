// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Alarm/alarm_screen.dart';
import 'package:mommy_to_be/Screens/Calender/calendarpage.dart';
import 'package:mommy_to_be/Screens/Diary/diary_config/notes_page.dart';
import 'package:mommy_to_be/Screens/Login/login_screen.dart';

class Diarypage extends StatelessWidget {
  const Diarypage({Key? key}) : super(key: key);

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
                  Navigator.push(context,
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
              crossAxisAlignment: CrossAxisAlignment.center,
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
                            builder: (context) => AlarmPage(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.navigate_before,
                        size: 50.0,
                      ),
                    ),
                    FlatButton(
                      shape: CircleBorder(),
                      child: Container(
                        child: Image.asset(
                          "assets/images/image 18.png",
                        ),
                        alignment: Alignment.center,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotesPage(),
                          ),
                        );
                      },
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
                            builder: (context) => Calenderpage(),
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
                  'DIARY',
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
