import 'package:flutter/material.dart';
import 'package:mommy_to_be/Screens/Sign%20Up/sign_up_screen.dart';

class ContentBox extends StatefulWidget {
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
      backgroundColor: Colors.deepPurple[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Center(
                  child: new SizedBox(
                    height: 250,
                    width: 250,
                    child: Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Grey_Square.svg/2048px-Grey_Square.svg.png'),
                    ),
                  ),
                ),
                Center(
                  child: new SizedBox(
                    width: 200,
                    child: TextField(
                      controller: LoginIDcontroller,
                      decoration: InputDecoration(
                        hintText: 'LOGIN ID',
                      ),
                    ),
                  ),
                ),
                Center(
                  child: new SizedBox(
                    width: 200,
                    child: TextField(
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
                  children: [
                    new SizedBox(
                      width: 150,
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.pink,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                new SizedBox(
                  height: 50,
                ),
                new SizedBox(
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
                      'Login',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Or'),
                ),
                new SizedBox(
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
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: Text(
                    "Don't have an account? Create one",
                    style: TextStyle(
                      color: Colors.pink,
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
