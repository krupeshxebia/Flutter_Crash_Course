import 'package:flutter/material.dart';

void main() => runApp(TextFieldDemo());

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String ptext = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TextField Demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Text Field"),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              onChanged: (String text) {
                setState(() {
                  ptext = text;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Enter Username",
              ),
            ),
            TextField(
              onSubmitted: (String text) {
                setState(() {
                  ptext = text;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key),
                hintText: "Enter Password",
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 40,
              width: 1,
            ),
            Text(ptext)
          ],
        ),
      ),
    );
  }
}
