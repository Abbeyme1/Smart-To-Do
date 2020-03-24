import 'package:flutter/material.dart';
import 'package:texttospeech/todoPage/convert_to_speech.dart';

// ignore: camel_case_types
class listTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  final int date;
  final int month;
  final int hr;
  final int min;

  listTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback,
      this.date,
      this.month,
      this.hr,
      this.min});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Card(
        child: ListTile(
          onTap: () {
            ConvertToSpeech(taskTitle).toSpeech();
          },
          onLongPress: longPressCallback,
          title: Text(
            taskTitle,
            style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
          leading: Checkbox(
            value: isChecked,
            onChanged: checkboxCallback,
          ),
          trailing: Text("At: $date $month, $hr:$min"),
        ),
      ),
    );
  }
}
