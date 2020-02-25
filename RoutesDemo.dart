import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RoutesDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class RoutesDemo extends StatefulWidget {
  @override
  _RoutesDemoState createState() => _RoutesDemoState();
}

class _RoutesDemoState extends State<RoutesDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firt Page'),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SecondPage()));
              })
        ],
      ),
      body: Center(child: Text("Hello World")),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
      body: Center(
        child: Text("Second Page"),
      ),
    );
  }
}
