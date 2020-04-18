import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    Map<int, Widget> pageView = {
      1: getMain(),
    };
    return pageView[pageIndex];
  }

  Widget getMain() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text(
          "Kartofgram",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(Feather.camera)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Feather.tv),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Feather.send,
              ))
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
        child: getStories(),
      ),
    );
  }

  Widget getStories() {
    return ListView(
      scrollDirection: Axis.horizontal,
      //children: getUserStory(),
    );
  }

  // Widget getAllUserStory(){
  //   List<Widget> stories =[];
  //   return stories;
  // }

}
