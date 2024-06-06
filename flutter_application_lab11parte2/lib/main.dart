import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material and Cupertino Controls',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _materialSliderValue = 0.5;
  double _cupertinoSliderValue = 0.5;
  bool _materialSwitchValue = false;
  bool _cupertinoSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material and Cupertino Controls'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Material Slider',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _materialSliderValue,
              onChanged: (newValue) {
                setState(() {
                  _materialSliderValue = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Cupertino Slider',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CupertinoSlider(
              value: _cupertinoSliderValue,
              onChanged: (newValue) {
                setState(() {
                  _cupertinoSliderValue = newValue;
                });
              },
            ),
            SizedBox(height: 40),
            Text(
              'Material Switch',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Switch(
              value: _materialSwitchValue,
              onChanged: (newValue) {
                setState(() {
                  _materialSwitchValue = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Cupertino Switch',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            CupertinoSwitch(
              value: _cupertinoSwitchValue,
              onChanged: (newValue) {
                setState(() {
                  _cupertinoSwitchValue = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
