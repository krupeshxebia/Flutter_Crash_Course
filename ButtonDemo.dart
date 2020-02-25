import 'package:flutter/material.dart';

void main() => runApp(ButtonDemo());

class ButtonDemo extends StatefulWidget {
  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  String ptext = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Button Demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Buttons"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text("Raised Button"),
            ),
            FlatButton(onPressed: () {}, child: Text("Flat Button"))
          ],
        ),
      ),
    );
  }
}
