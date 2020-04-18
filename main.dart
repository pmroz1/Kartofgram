import 'package:flutter/material.dart';
import './Pages/Home.dart';

void main() => runApp(
      MaterialApp(
        home: App(),
        //color: Colors.black,
      ),
    );

class App extends StatelessWidget {
  final List<Widget> myPages = <Widget>[
    Home(),
  ];

  Widget build(BuildContext) {
    return DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
        ));
  }
}
