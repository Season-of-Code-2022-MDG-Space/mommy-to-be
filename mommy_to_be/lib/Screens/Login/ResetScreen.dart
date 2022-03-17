import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  _MyHomePageState2 createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<ResetScreen> {
  TextEditingController EmailIDcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100.0,
                  ),
                  Center(
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        controller: EmailIDcontroller,
                        decoration: const InputDecoration(
                          hintText: 'Enter Email ID',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 300,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ),
                          onPressed: () {
                            FirebaseAuth.instance.sendPasswordResetEmail(
                              email: EmailIDcontroller.text,
                            );
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Send Password Reset Link',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
