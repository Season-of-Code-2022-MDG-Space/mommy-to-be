import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Login/login_screen.dart';

import '../display_page.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<Content> {
  bool eyepressed = true;

  TextEditingController Usernamecontroller = TextEditingController();
  TextEditingController Namecontroller = TextEditingController();
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  TextEditingController Phonenocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 109,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: const Text(
                      'BACK',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(),
              ],
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  const Center(
                    child: Text(
                      'Sign Up',
                      textScaleFactor: 4,
                    ),
                  ),
                  Container(
                    height: 15,
                  ),
                  TextField(
                    controller: Usernamecontroller,
                    style: TextStyle(fontSize: 20, height: 1),
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      fillColor: Colors.blueGrey[100],
                      filled: true,
                    ),
                  ),
                  Container(
                    height: 15,
                  ),
                  TextField(
                    controller: Namecontroller,
                    style: const TextStyle(fontSize: 20, height: 1),
                    decoration: InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      fillColor: Colors.blueGrey[100],
                      filled: true,
                    ),
                  ),
                  Container(
                    height: 15,
                  ),
                  TextField(
                    controller: Emailcontroller,
                    style: const TextStyle(fontSize: 20, height: 1),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      fillColor: Colors.blueGrey[100],
                      filled: true,
                    ),
                  ),
                  Container(
                    height: 15,
                  ),
                  TextField(
                    controller: Passwordcontroller,
                    style: const TextStyle(
                      fontSize: 20,
                      height: 1,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      fillColor: Colors.blueGrey[100],
                      filled: true,
                      suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              eyepressed = !eyepressed;
                            });
                          }),
                    ),
                    obscureText: eyepressed,
                  ),
                  Container(
                    height: 15,
                  ),
                  TextField(
                    controller: Phonenocontroller,
                    style: TextStyle(fontSize: 20, height: 1),
                    decoration: InputDecoration(
                      hintText: 'Phone No.',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      fillColor: Colors.blueGrey[100],
                      filled: true,
                    ),
                  ),
                  Container(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                      onPressed: () {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: Emailcontroller.text,
                                password: Passwordcontroller.text)
                            .then((value) {
                          print("Created New Account");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DisplayPage()),
                          );
                        }).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                        });
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
