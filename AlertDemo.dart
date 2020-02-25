import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AlertDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class AlertDemo extends StatefulWidget {
  @override
  _AlertDemoState createState() => _AlertDemoState();
}

class _AlertDemoState extends State<AlertDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            dialog();
          },
          child: Text('Greet me'),
        ),
      ),
    );
  }

  void dialog() {
    showDialog(
      context: context,
      child: AlertDialog(
        backgroundColor: Colors.white,
        title: Text('Hi there!'),
        content: Text('It is a SunShine'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
