import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:texttospeech/settings.dart';
import 'package:texttospeech/speech.dart';
import 'package:texttospeech/todoPage/todo.dart';
import 'package:texttospeech/widget/iconBuilder.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentIndex = 0;
  final List<Widget> _children = [
    Todo(),
    TextToSpeech(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.blueAccent,
        color: Colors.blueAccent,
        backgroundColor: Colors.white,
        items: <Widget>[
          IconBuilder(
            iconName: Icons.home,
          ),
          IconBuilder(
            iconName: Icons.speaker_phone,
          ),
          IconBuilder(
            iconName: Icons.settings,
          ),
        ],
        onTap: (index) {
          debugPrint("current index is $index");
          setState(() {
            currentIndex = index;
          });
        },
        height: 65.0,
        index: currentIndex,
      ),
    );
  }
}
