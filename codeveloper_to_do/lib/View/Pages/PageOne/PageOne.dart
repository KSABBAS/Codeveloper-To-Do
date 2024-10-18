import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Tasks/LocalTasks/NoDateTasks/NoDateTask.dart';
import 'package:codeveloper_to_do/View/Tasks/TeamsTasks/NoDateTasks/TeamNoDateTask.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:codeveloper_to_do/main.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    print("Page One Is Being Built");
    TodaysList = Task.MakeTodaysList(UserData![1]);
    return ListView(children: [
      PMaker(vertical: 30),
      TMaker(
        text: "Hi ${UserData![0].split(" ")[0]}",
        fontSize: 80,
        fontWeight: FontWeight.w800,
        color: UsedColors.White,
        fontFamily: "Courgette",
      ),
      PMaker(vertical: 30),
      CMaker(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: CMaker(
                color: UsedColors.mixBlue,
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                circularRadius: 20,
                child: Row(
                  children: [
                    TMaker(
                        fontFamily: "Courgette",
                        text: "Done",
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: UsedColors.White),
                    Expanded(child: CMaker()),
                    TMaker(
                        text: "${Task.TasksDoneToday(TodaysList!)}/${TodaysList!.length}",
                        fontFamily: "Courgette",
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: UsedColors.White),
                  ],
                ),
              ),
            ),
            PMaker(
              horizontal: 20,
            ),
            Expanded(
              flex: 3,
              child: CMaker(
                color: UsedColors.mixBlue,
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 70,
                alignment: Alignment.center,
                circularRadius: 20,
                child: Icon(
                  Icons.display_settings,
                  size: 50,
                  color: UsedColors.White,
                ),
                margin: EdgeInsets.only(right: 20),
              ),
            ),
          ],
        ),
      ),
      PMaker(vertical: 20),
      Container(
        height: (TodaysList!.length) * 140,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          itemCount: TodaysList!.length,
          itemBuilder: (context, index) {
            if (TodaysList![index].length == 2) {
              return NoDateTask(
                  onCheck: () {
                    print("============Refreshing Page One......");
                    setState(() {});
                  },
                  file: TodaysList![index][0],
                  index: TodaysList![index][1]);
            } else {
              return TeamNoDateTask(
                onCheck: () {
                  setState(() {
                    
                  });
                },
                  program: TodaysList![index][0],
                  member: TodaysList![index][1],
                  index: TodaysList![index][2]);
            }
          },
        ),
      ),
      PMaker(vertical: 120)
    ]);
  }
}
