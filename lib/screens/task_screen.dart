import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/model/tasks.dart';
import 'package:todoey/task_list.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/taskdata.dart';

bool test = false;
String title;

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: BottomSheet(),
            ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 30, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(
                        Icons.list,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'TODOEY',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '${Provider.of<TaskData>(context, listen: true).taskdatacount} tasks',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 50, right: 50, bottom: 20),
        height: 400,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'ADD TASK',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              TextField(
                  onChanged: (val) {
                    title = val;
                  },
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    focusColor: Colors.lightBlueAccent,
                    hoverColor: Colors.lightBlueAccent,
                  )),
              FlatButton(
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(title);
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: Colors.lightBlueAccent,
                    child: Center(
                      child: Text(
                        'Add',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      ),
    );
  }
}
