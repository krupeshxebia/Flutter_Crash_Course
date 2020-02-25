import 'package:flutter/material.dart';

void main() => runApp(AppBarAdvance());

class AppBarAdvance extends StatefulWidget {
  @override
  _AppBarAdvanceState createState() => _AppBarAdvanceState();
}

class _AppBarAdvanceState extends State<AppBarAdvance> {
  String bodyText = '';
  void iconPress() {
    setState(() {
      bodyText = "Print new Item";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppBar Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Widget"),
          leading: Icon(Icons.menu),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.print), onPressed: iconPress),
          ],
        ),
        body: Center(
          child: Text(
            bodyText,
            style: TextStyle(fontSize: 34.0),
          ),
        ),
      ),
    );
  }
}

class BasicAppBar {
  static getAppBar(String title) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.green,
      titleSpacing: 40.0,
      toolbarOpacity: 0.6,
    );
  }
}
