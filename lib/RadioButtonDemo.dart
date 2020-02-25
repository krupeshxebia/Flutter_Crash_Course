import 'package:flutter/material.dart';

void main() => runApp(RadioButtonDemo());

class RadioButtonDemo extends StatefulWidget {
  @override
  _RadioButtonDemoState createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadioButtonDemo> {
  int rvalue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RadioButton Demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Radio Buttons"),
        ),
        body: Column(
          children: <Widget>[
            Radio(value: 1, groupValue: rvalue, onChanged: radioToggler),
            Radio(value: 2, groupValue: rvalue, onChanged: radioToggler),
            Radio(value: 3, groupValue: rvalue, onChanged: radioToggler),
          ],
        ),
      ),
    );
  }

  void radioToggler(int value) {
    setState(() {
      rvalue = value;
      print(rvalue);
    });
  }
}
