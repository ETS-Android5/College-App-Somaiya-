import 'package:flutter/material.dart';

class NewNotifications extends StatelessWidget {
  final List<String> newnotice = [
    "Check LY Exam dates",
    "Check SET Exam date",
    "SPGE Exam dates"
  ];

  //final List<String> oldnotice = [];

  @override
  Widget build(BuildContext context) {
    final bool notice = newnotice.isEmpty;
    final Widget widgetToRender = notice != false
        ? Text(
            'No Updates',
            style: TextStyle(
              color: Colors.green,
              fontSize: 40,
            ),
          )
        : Text(
            '$newnotice',
            style: TextStyle(
              color: Colors.red,
              fontSize: 40,
            ),
          );
    return Scaffold(
      appBar: AppBar(
        title: Text('New Notifications'),
      ),
      body: widgetToRender,
    );
  }
}
