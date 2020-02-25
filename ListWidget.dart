import 'package:flutter/material.dart';
import './CustomAppBar.dart';

void main() => runApp(ListWidget());

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Demo",
      home: Scaffold(
        appBar: CustomAppBar.getAppBar("List View"),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
