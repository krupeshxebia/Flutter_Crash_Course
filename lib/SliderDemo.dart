import 'package:flutter/material.dart';

void main() => runApp(SliderDemo());

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double slider_value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Slider Demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Slider"),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 100.0, width: 1.0),
            Slider(
              divisions: 10,
              value: slider_value,
              min: 0.0,
              max: 10.0,
              onChanged: changeSlider,
            ),
            Text(
              "Value : ${slider_value.floor().toString()}",
              style: TextStyle(fontSize: 46),
            )
          ],
        ),
      ),
    );
  }

  void changeSlider(double new_value) {
    setState(() {
      slider_value = new_value;
    });
  }
}
