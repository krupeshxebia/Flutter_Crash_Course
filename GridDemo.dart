import 'package:flutter/material.dart';
import './CustomAppBar.dart';

void main() => runApp(GridDemo());

class GridDemo extends StatefulWidget {
  @override
  _GridDemoState createState() => _GridDemoState();
}

class _GridDemoState extends State<GridDemo> {
  List<int> items = List();

  @override
  void initState() {
    for (var i = 0; i < 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  Widget gridCell(BuildContext context, int index) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20.0),
      ),
      color: Colors.lightBlue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Grid Demo",
      home: Scaffold(
        appBar: CustomAppBar.getAppBar("Grid Demo"),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: gridCell,
          itemCount: items.length,
        ),
      ),
    );
  }
}
