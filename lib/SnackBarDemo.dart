import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SnackBarDemo()));
}

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  void _method1() {
    _scaffoldkey.currentState.showSnackBar(SnackBar(
      content: Text('Items added to cart'),
      backgroundColor: Colors.green,
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Center(
        child: RaisedButton(
          onPressed: _method1,
          child: Text('Add to Cart'),
        ),
      ),
    );
  }
}
