import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider/provider.dart';
import 'package:texttospeech/todoPage/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    int dateValue;
    int monthValue;
    int hrValue;
    int minValue;

    return Container(
      height: 500,
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true,
                      onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    dateValue = date.day;
                    print("............");
                    print(dateValue);
                    print("............");
                    monthValue = date.month;
                    hrValue = date.hour;
                    minValue = date.minute;
                  }, currentTime: DateTime.now());
                },
                child: Text(
                  'Click here to choose Date-Time',
                  style: TextStyle(color: Colors.blue),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your todo',
                ),
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                'Sumbit',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                print(dateValue);
                Provider.of<TaskData>(context, listen: false).addTask(
                    newTaskTitle: newTaskTitle,
                    date: dateValue,
                    month: monthValue,
                    hr: hrValue,
                    min: minValue);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
