import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DialogDemo()));
}

class DialogDemo extends StatefulWidget {
  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  SimpleDialog sd;

  _printmethod(val) {
    print(val);
  }

  void _method1() {
    sd = SimpleDialog(
      title: Text('Title'),
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context, _printmethod('d1'));
          },
          child: Text('Treasury department'),
        ),
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context, _printmethod('d1'));
          },
          child: const Text('State department'),
        ),
      ],
    );
    showDialog(context: context, child: sd);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            _method1();
          },
          child: Text('Show Alert Dailog'),
        ),
      ),
    );
  }
}
