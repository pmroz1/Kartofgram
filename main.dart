import 'package:flutter/material.dart';
import 'package:kartofgram/Pages/HomePage.dart';
import 'package:kartofgram/Pages/NotificationsPage.dart';
import 'package:kartofgram/Pages/ProfilePage.dart';
import 'package:flutter/services.dart';

void main() => runApp(
      MaterialApp(
        title: "Kartofgram",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: App(),
        
        //color: Colors.black,
      ),
    );

class App extends StatelessWidget {
  final List<Widget> myPages = [
    HomePage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: TabBarView(
              children: myPages,
            ),
            bottomNavigationBar: Container(
              margin: EdgeInsets.only(bottom: 1),
              color: Colors.black87,
              child: new TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.account_circle),
                ),
                Tab(
                  icon: Icon(Icons.notifications),
                )
              ]),
            )));
  }
}
