import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

// ignore: must_be_immutable
class DateTimePicker extends StatelessWidget {
  int dateValue;
  int monthValue;
  int yearValue;

  int hrValue;
  int minValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
            onPressed: () {
              DatePicker.showDateTimePicker(context, showTitleActions: true,
                  onChanged: (date) {
                print('change $date in time zone ' +
                    date.timeZoneOffset.inHours.toString());
              }, onConfirm: (date) {
//                print(".....................");
                dateValue = date.day;
                monthValue = date.month;
                yearValue = date.year;
                hrValue = date.hour;

//                print(dateValue);
//                print(monthValue);
//                print(hrValue);

                minValue = date.minute;
//                print(".....................");
              }, currentTime: DateTime.now());
            },
            child: Text(
              'Click here to choose Date-Time',
              style: TextStyle(color: Colors.blue),
            )),
      ],
    );
  }
}
