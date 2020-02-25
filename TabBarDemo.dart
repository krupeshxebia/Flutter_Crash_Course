import 'package:flutter/material.dart';

void main() => runApp(TabBarDemo());

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  TabController _tcontroller;

  @override
  void initState() {
    _tcontroller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tab Bar Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flex App Bar"),
          bottom: TabBar(
            controller: _tcontroller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.supervisor_account)),
              Tab(icon: Icon(Icons.recent_actors))
            ],
          ),
        ),
        body: TabBarView(
          controller: _tcontroller,
          children: <Widget>[
            Center(
              child: Text("Home View"),
            ),
            Center(
              child: Text("People View"),
            ),
            Center(
              child: Text("Contacts View"),
            ),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.blue,
          child: TabBar(
            controller: _tcontroller,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.supervisor_account)),
              Tab(icon: Icon(Icons.recent_actors))
            ],
          ),
        ),
      ),
    );
  }
}
