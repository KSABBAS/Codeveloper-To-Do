import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Extra/PageTwoFile/FilePage.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    print("Page Two Is Being Built");
    return ListView(
      children: [
        PMaker(vertical: 50),
        TMaker(
          text: "Personal Tasks",
          fontSize: 50,
          fontWeight: FontWeight.w800,
          color: UsedColors.Blue,
          fontFamily: UsedFonts.UsedFont,
        ),
        PMaker(vertical: 40),
        WGridBuilder(
            Scroll: false,
            childBoxShadow: [
              BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 10,
                  color: const Color.fromARGB(75, 0, 0, 0)),
            ],
            childColor: UsedColors.White,
            childHeight: 210,
            childWidth: (PageWidth(context) / 2) - 30,
            builder: (Index) {
              return Column(
                children: [
                  PMaker(
                    vertical: 20,
                  ),
                  Image.asset(Task.LocalData[Task.LocalData.keys.elementAt(Index)]![Task.LocalData[Task.LocalData.keys.elementAt(Index)]!.length-1]),
                  PMaker(
                    vertical: 20,
                  ),
                  TMaker(
                      text: (Task.LocalData.keys.elementAt(Index).length > 11)
                          ? Task.LocalData.keys
                                  .elementAt(Index)
                                  .substring(0, 11) +
                              "..."
                          : Task.LocalData.keys.elementAt(Index),
                      fontFamily: UsedFonts.UsedFont,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: UsedColors.Blue),
                ],
              );
            },
            itemCount: Task.LocalData.length,
            crossAxisCount: 2,
            rowSpaces: 20,
            columnSpaces: 20,
            onSelected: (SelectedIndex) {
              Get.to(() => PageTwoFile(
                  file: Task.LocalData.keys.elementAt(SelectedIndex)));
            },
          ),
        CMaker(
          height: 250,
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: InkWell(
            onTap: () {
              print("Add Task");
            },
            child: CMaker(
              width: 100,
              height: 100,
              circularRadius: 2000,
              border: Border.all(color: UsedColors.Blue, width: 8),
              child: Icon(
                Icons.add,
                color: UsedColors.Blue,
                size: 70,
              ),
            ),
          ),
        )
      ],
    );
  }
}
