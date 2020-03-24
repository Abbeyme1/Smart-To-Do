import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:texttospeech/todoPage/task_data.dart';
import 'package:texttospeech/todoPage/listTile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return listTile(
              date: task.date,
              month: task.month,
              hr: task.hr,
              min: task.min,
              longPressCallback: () {
                taskData.deleteTask(task);
              },
              taskTitle: task.name,
              isChecked: task.isChecked,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
