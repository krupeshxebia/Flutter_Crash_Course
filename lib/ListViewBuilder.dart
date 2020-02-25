import 'package:flutter/material.dart';
import './CustomAppBar.dart';

class ListViewBuilder extends StatelessWidget {
  final List<String> items = ["Monica", "Rachel", "Ross", "Chandler", "Joy"];

  Widget listCell(BuildContext context, int index) {
    return ListTile(
      title: Text("Friends : ${items[index]}"),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView Builder Demo",
      home: Scaffold(
        appBar: CustomAppBar.getAppBar("List View Builder"),
        body: ListView.builder(
          itemBuilder: listCell,
          itemCount: items.length,
        ),
      ),
    );
  }
}
