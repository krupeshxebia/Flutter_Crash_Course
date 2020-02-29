import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DropdownButton Tutorial',
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DropDown Option'),
        ),
        body: Center(
          child: CustomDropDown(),
        ),
      ),
    );
  }
}

class CustomDropDown extends StatefulWidget {
  @override
  _CustomDropDownState createState() {
    return _CustomDropDownState();
  }
}

class _CustomDropDownState extends State<CustomDropDown> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 74,
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Color(0x44b396bc), blurRadius: 8, spreadRadius: 2)
          ],
          borderRadius: BorderRadius.circular(6.0),
          color: Colors.white,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 34,
              color: Colors.black54,
            ),
            items: [
              DropdownMenuItem<String>(
                child: Text('Item 1'),
                value: 'one',
              ),
              DropdownMenuItem<String>(
                child: Text('Item 2'),
                value: 'two',
              ),
              DropdownMenuItem<String>(
                child: Text('Item 3'),
                value: 'three',
              ),
            ],
            onChanged: (String value) {
              setState(() {
                _value = value;
              });
            },
            hint: Text(
              'Select Item',
              style: TextStyle(fontSize: 20.0),
            ),
            value: _value,
          ),
        ),
      ),
    );
  }
}
