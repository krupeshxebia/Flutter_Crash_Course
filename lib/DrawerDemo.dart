import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new DrawerDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class DrawerDemo extends StatefulWidget {
  @override
  _DrawerDemoState createState() => new _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  String body_text;

  @override
  void initState() {
    body_text = "Hello World";
    super.initState();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Drawer'),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Krupesh Anadkat'),
              accountEmail: new Text('Full Stack Software Developer'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black26,
                child: new Text('K'),
              ),
              decoration: new BoxDecoration(color: Colors.blueGrey),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.black26, child: new Text('D')),
              ],
            ),
            new ListTile(
              title: new Text('Page 1'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                setState(() {
                  body_text = "Page 1";
                });
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text('Page 2'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                setState(() {
                  body_text = "Page 2";
                });
                Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close),
              onTap: () {
                setState(() {
                  body_text = "Drawer Closed";
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("$body_text")),
    );
  }
}
