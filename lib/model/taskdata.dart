import 'package:flutter/foundation.dart';
import 'tasks.dart';
import 'dart:collection';
import 'package:todoey/model/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(titleName: 'this is it'),
    Task(titleName: 'this is it'),
    Task(titleName: 'this is it'),
  ];

  int get taskdatacount {
    return _task.length;
  }

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  void addTask(String value) {
    final newtask = Task(titleName: value);
    _task.add(newtask);
    notifyListeners();
  }

  void taskCheck(Task tsk) {
    tsk.isToogleDone();
    notifyListeners();
  }

  void removeData(int index) {
    _task.removeAt(index);
    notifyListeners();
  }
}
