import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/taskdata.dart';
import 'package:todoey/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskdata, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onLongPress: () {
              taskdata.removeData(index);
            },
            child: TaskTile(
              taskTitle: taskdata.task[index].titleName,
              checking: taskdata.task[index].isChecked,
              setting: (checking) {
                taskdata.taskCheck(taskdata.task[index]);
                Listener();
              },
            ),
          );
        },
        itemCount: taskdata.taskdatacount,
      );
    });
  }
}
