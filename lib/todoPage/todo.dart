import 'package:flutter/material.dart';
import 'package:texttospeech/todoPage/task_list.dart';

import 'add_task_screen.dart';

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 13,
            child: Container(
              child: TaskList(),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0, right: 20.0),
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.yellowAccent,
                  child: Icon(
                    Icons.add,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => AddTaskScreen(
                              addTaskCallback: (newTaskTitle) {
                                Navigator.pop(context);
                              },
                            ));
                  },
                ),
              )),
        ],
      ),
    ));
  }
}
