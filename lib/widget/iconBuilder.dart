import 'package:flutter/material.dart';

class IconBuilder extends StatelessWidget {
  final IconData iconName;

  IconBuilder({this.iconName});

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconName,
      color: Colors.white,
    );
  }
}
