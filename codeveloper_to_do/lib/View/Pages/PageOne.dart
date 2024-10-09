import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Tasks/DatedTasks/DatedTask.dart';
import 'package:codeveloper_to_do/View/Tasks/NoDateTasks/NoDateTask.dart';
import 'package:codeveloper_to_do/data/SignUpData.dart';
import 'package:codeveloper_to_do/data/Tasks/SpecificTasks/TaskWithDataToDo.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:codeveloper_to_do/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  Task task = new Task();
  TaskWithDataToDo taskWithDataToDo = new TaskWithDataToDo();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PMaker(
          top: 40,
        ),
        CMaker(
          child: TMaker(
            text: "Hello ",
            fontSize: 50,
            fontWeight: FontWeight.w600,
            color: UsedColors.Blue,
            fontFamily: "Courgette",
          ),
        ),
        CMaker(
          child: TMaker(
            text: "kareem", //"${UserData![0].split(" ")[0]} !!",
            fontSize: 50,
            fontWeight: FontWeight.w600,
            color: UsedColors.Blue,
            fontFamily: "Courgette",
          ),
        ),
        PMaker(
          top: 20,
        )
      ],
    );
  }
}
