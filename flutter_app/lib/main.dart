import 'package:flutter/material.dart';

void main() {
  var todon;

  final todoncontroller = new TextEditingController();

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Row(children: [
            TextField(
              controller: todoncontroller,
              decoration: InputDecoration(
                hintText: "Add Task",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    icon: Icon(Icons.double_arrow_outlined),
                    onPressed: () {
                      setState() {
                        todon = todon + "\n" + todoncontroller.text;
                      }
                    }),
              ),
            ),
            Container(height: 16),
            Text(todon),
            Container(height: 16),
          ]),
        ),
      ),
    ),
  );
}
