import 'package:flutter/material.dart';

void main() => runApp(SwitchDemo());

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool switch_value = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Switch Demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Switch"),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(width: 500, height: 46),
            Switch(value: switch_value, onChanged: switchToggler),
            Text(
              "Switch state : ${(switch_value) ? "ON" : "OFF"}",
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }

  void switchToggler(bool new_value) {
    setState(() {
      switch_value = new_value;
    });
  }
}
