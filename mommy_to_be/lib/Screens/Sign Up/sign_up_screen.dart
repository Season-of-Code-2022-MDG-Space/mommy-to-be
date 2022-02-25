import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Sign%20Up/content_box.dart';

// void main() {
//   runApp(MyApp());
// }

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Content(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.black,
                        onSurface: Colors.black,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: null,
                      child: const Text(
                        'Back',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Container(),
                ],
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            'Sign Up',
                            textScaleFactor: 4,
                          ),
                        ),
                      ),
                      Container(
                        height: 15,
                      ),
                      Container(
                        child: TextField(
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
                      ),
                      Container(
                        height: 15,
                      ),
                      Container(
                        child: TextField(
                          controller: Namecontroller,
                          style: TextStyle(fontSize: 20, height: 1),
                          decoration: InputDecoration(
                            hintText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            fillColor: Colors.blueGrey[100],
                            filled: true,
                          ),
                        ),
                      ),
                      Container(
                        height: 15,
                      ),
                      Container(
                        child: TextField(
                          controller: Emailcontroller,
                          style: TextStyle(fontSize: 20, height: 1),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            fillColor: Colors.blueGrey[100],
                            filled: true,
                          ),
                        ),
                      ),
                      Container(
                        height: 15,
                      ),
                      Container(
                        child: TextField(
                          controller: Passwordcontroller,
                          style: TextStyle(
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
                      ),
                      Container(
                        height: 15,
                      ),
                      Container(
                        child: TextField(
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
                      ),
                      Container(
                        height: 15,
                      ),
                      new SizedBox(
                        height: 50,
                        width: 200,
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
                          onPressed: null,
                          child: const Text(
                            'SUBMIT',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      //FlatButton(onPressed: onPressed, child: child)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
