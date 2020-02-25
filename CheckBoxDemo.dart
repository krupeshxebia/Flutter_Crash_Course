import 'package:flutter/material.dart';

void main() => runApp(CheckBoxDemo());

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool c_bool = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Checkbox Demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Buttons"),
        ),
        body: Column(
          children: <Widget>[
            Checkbox(
              value: c_bool,
              onChanged: (bool change) {
                setState(() {
                  c_bool = !c_bool;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
