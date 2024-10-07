import 'package:codeveloper_to_do/View/Tasks/DatedTasks/DatedTask.dart';
import 'package:codeveloper_to_do/View/Tasks/NoDateTasks/NoDateTask.dart';
import 'package:codeveloper_to_do/data/Tasks/SpecificTasks/TaskWithDataToDo.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';
class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  Task task=new Task();
  TaskWithDataToDo taskWithDataToDo=new TaskWithDataToDo();
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      NoDateTask(taskData: task.GetTaskData("daily", 0)),
      DatedTask(taskData: taskWithDataToDo.GetTaskData("daily", 2))
    ],);
  }
}