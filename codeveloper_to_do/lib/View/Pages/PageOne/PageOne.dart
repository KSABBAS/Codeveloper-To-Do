import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Extra/Filter/FilterAndSort.dart';
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
      PMaker(vertical: 50),
      TMaker(
        text: "Hi ${UserData![0].split(" ")[0]}",
        fontSize: 60,
        fontWeight: FontWeight.w800,
        color: UsedColors.Blue,
        fontFamily: UsedFonts.UsedFont,
      ),
      PMaker(vertical: 40),
      CMaker(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: CMaker(
                color: UsedColors.Blue,
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                circularRadius: 20,
                child: Row(
                  children: [
                    TMaker(
                        fontFamily: UsedFonts.UsedFont,
                        text: "Done",
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        color: UsedColors.White),
                    Expanded(child: CMaker()),
                    TMaker(
                        text:
                            "${Task.TasksDoneToday(TodaysList!)}/${TodaysList!.length}",
                        fontFamily: UsedFonts.UsedFont,
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
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return FilterAndSort(FilterRefresh: () {
                        setState(() {
                        });
                      },);
                    },
                  );
                },
                child: CMaker(
                  border: Border.all(width: 3, color: UsedColors.mixBlue),
                  height: 70,
                  alignment: Alignment.center,
                  circularRadius: 20,
                  child: Icon(
                    Icons.filter_list,
                    size: 50,
                    color: UsedColors.mixBlue,
                  ),
                  margin: EdgeInsets.only(right: 20),
                ),
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
            // return
            // Column(
            //   children: [
            //     () {
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
                    setState(() {});
                  },
                  program: TodaysList![index][0],
                  member: TodaysList![index][1],
                  index: TodaysList![index][2]);
            }
            // }(),
            // (index != TodaysList!.length - 1)
            //     ? CMaker(
            //         height: 0,
            //         width: double.infinity,
            //         margin:
            //             EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            //         border: Border.all(width: .7,color: const Color.fromARGB(155, 77, 77, 77)),
            //       )
            //     : CMaker()
            // ],
            // );
          },
        ),
      ),
      PMaker(vertical: 120)
    ]);
  }
}
