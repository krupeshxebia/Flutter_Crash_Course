import 'package:flutter/material.dart';
import './CustomAppBar.dart';

void main() => runApp(StackDemo());

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack Demo",
      home: Scaffold(
        appBar: CustomAppBar.getAppBar("Stack Demo"),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Card(
                color: Colors.orange,
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(200.0),
                ),
              ),
              Card(
                color: Colors.yellow,
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(150.0),
                ),
              ),
              Card(
                color: Colors.red,
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(100.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
