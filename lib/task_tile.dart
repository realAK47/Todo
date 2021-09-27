import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  @override
  bool checking = false;
  final Function setting;
  final String taskTitle;
  TaskTile({this.checking, this.setting, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: checking ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: checking,
        checkColor: Colors.green,
        activeColor: Colors.white,
        onChanged: setting,
      ),
    );
  }
}
