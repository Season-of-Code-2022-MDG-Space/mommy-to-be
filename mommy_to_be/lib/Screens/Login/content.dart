import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Login/ResetScreen.dart';
import 'package:mommy_to_be/Screens/Sign%20Up/sign_up_screen.dart';

import '../display_page.dart';

class ContentBox extends StatefulWidget {
  const ContentBox({Key? key}) : super(key: key);

  @override
  _MyHomePageState2 createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<ContentBox> {
  bool eyepressed = true;

  TextEditingController LoginIDcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                        child: Image.asset(
                          "assets/icons/image 22.png",
                          fit: BoxFit.fitWidth,
                        ),
                        backgroundColor: Colors.white,
                      )),
                ),
                const SizedBox(
                  height: 100.0,
                ),
                Center(
                  child: SizedBox(
                    width: 250,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Adamina',
                      ),
                      controller: LoginIDcontroller,
                      decoration: const InputDecoration(
                        hintText: 'Login Id',
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 250,
                    child: TextField(
                      style: TextStyle(
                        fontFamily: 'Adamina',
                        fontSize: 20,
                      ),
                      controller: Passwordcontroller,
                      decoration: InputDecoration(
                        hintText: 'Password',
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
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      width: 150,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetScreen()),
                        );
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          //fontFamily: 'GreatVibes',
                          //fontSize: 25,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 60,
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
                    onPressed: () {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: LoginIDcontroller.text,
                              password: Passwordcontroller.text)
                          .then((value) {
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
                      'Login',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontFamily: 'Adamina',
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: const Text(
                    "Don't have an account? Create one",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Allura',
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
