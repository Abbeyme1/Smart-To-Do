import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:texttospeech/bottomNavigationBar.dart';
import 'package:texttospeech/todoPage/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
//      home: BottomNavigationBar(),
        home: MyBottomNavigationBar(),
      ),
    );
  }
}
