import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Tasks/LocalTasks/DatedTasks/DatedTask.dart';
import 'package:codeveloper_to_do/View/Tasks/LocalTasks/NoDateTasks/NoDateTask.dart';
import 'package:codeveloper_to_do/View/Tasks/TeamsTasks/DatedTasks/TeamDatedTask.dart';
import 'package:codeveloper_to_do/data/SignUpData.dart';
import 'package:codeveloper_to_do/data/Tasks/SpecificTasks/TaskWithDataToDo.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:codeveloper_to_do/data/loginData.dart';
import 'package:codeveloper_to_do/main.dart';
import 'package:flutter/material.dart';

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
    return ListView(children: [
      PMaker(top: 50),
      CMaker(
        color: const Color.fromARGB(115, 96, 85, 85),
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        circularRadius: 20,
        child: Row(
          children: [
            TMaker(
                text: "Done",
                fontSize: 50,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 250, 107, 107)),
            TMaker(
                text: "3/6",
                fontSize: 50,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 154, 35, 35)),
            PMaker(top: 75),
          ],
        ),
      ),
      PMaker(
        top: 10,
        left: 5,
      ),
      InkWell(
        onTap: () {
          Task.AddLocalTaskOnTop("prayer", "hi", "by", false);
          setState(() {});
        },
        child: CMaker(
          padding: EdgeInsets.only(right: 150),
          width: double.infinity,
          height: 100,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: CMaker(
            alignment: Alignment.center,
            circularRadius: 20,
            child: TMaker(
              text: "filter",
              fontSize: 50,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            color: const Color.fromARGB(115, 96, 85, 85),
            margin: EdgeInsets.symmetric(horizontal: 50),
            height: 75,
          ),
          alignment: Alignment.centerLeft,
        ),
      ),
      PMaker(top: 50),
      Container(
        height: (Task.MakeTodaysList(UserData![1]).length) * 120,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          itemCount: Task.MakeTodaysList(UserData![1]).length,
          itemBuilder: (context, index) {
            if (Task.MakeTodaysList(UserData![1])[index].length == 2) {
              return NoDateTask(
                  file: Task.MakeTodaysList(UserData![1])[index][0],
                  index: Task.MakeTodaysList(UserData![1])[index][1]);
            } else {
              return TeamDatedTask(
                  program: Task.MakeTodaysList(UserData![1])[index][0],
                  member: Task.MakeTodaysList(UserData![1])[index][1],
                  index: Task.MakeTodaysList(UserData![1])[index][2]);
            }
          },
        ),
      ),
      PMaker(top: 120)
    ]);
  }
}
