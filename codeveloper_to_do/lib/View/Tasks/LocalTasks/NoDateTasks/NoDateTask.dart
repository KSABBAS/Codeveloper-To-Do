import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class NoDateTask extends StatefulWidget {
  NoDateTask(
      {super.key, this.onCheck, required this.file, required this.index});
  final String file;
  final int index;
  void Function()? onCheck;
  @override
  State<NoDateTask> createState() => _NoDateTaskState();
}

class _NoDateTaskState extends State<NoDateTask> {
  @override
  Widget build(BuildContext context) {
    return FocusedMenuHolder(
        child: CMaker(
            color: UsedColors.White,
            circularRadius: 20,
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(100, 0, 0, 0),
                  blurRadius: 10,
                  offset: Offset(2, 2))
            ],
            margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
            height: 130,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    PMaker(
                      horizontal: 20,
                    ),
                    CMaker(
                      height: 80,
                      alignment: Alignment.center,
                      child: Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                            overlayColor:
                                WidgetStateProperty.all(UsedColors.mixBlue),
                            activeColor: UsedColors.mixBlue,
                            side: BorderSide(color: UsedColors.mixBlue),
                            shape: CircleBorder(side: BorderSide()),
                            value: Task.GetLocalTaskData(
                                widget.file, widget.index)[3],
                            onChanged: (value) {
                              Task.LocalData[widget.file]![widget.index][3] =
                                  !Task.LocalData[widget.file]![widget.index]
                                      [3];
                              widget.onCheck!();
                            },
                          )),
                    ),
                    PMaker(
                      horizontal: 10,
                    ),
                    TMaker(
                        text:
                            Task.GetLocalTaskData(widget.file, widget.index)[1],
                        fontFamily: "Courgette",
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: UsedColors.black),
                  ],
                ),
                CMaker(
                  child: Row(
                    children: [
                      PMaker(
                        horizontal: 30,
                      ),
                      CMaker(
                        border: Border.all(color: UsedColors.orange),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        circularRadius: 20,
                        child: TMaker(
                            text: "Personal Task",
                            fontFamily: "Courgette",
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: UsedColors.orange),
                      ),
                      PMaker(
                        horizontal: 10,
                      ),
                      CMaker(
                        border: Border.all(color: UsedColors.orange),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        circularRadius: 20,
                        child: TMaker(
                            text: widget.file,
                            fontFamily: "Courgette",
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: UsedColors.orange),
                      ),
                      Expanded(child: CMaker()),
                      CMaker(
                        color: UsedColors.mixBlue,
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        circularRadius: 10,
                        child: TMaker(
                            text: () {
                              int importance = Task.GetLocalTaskData(
                                  widget.file, widget.index)[5];
                              if (importance == 1) {
                                return "Neglected";
                              } else if (importance == 2) {
                                return "In Mind";
                              } else if (importance == 3) {
                                return "Important";
                              } else if (importance == 4) {
                                return "Significant";
                              } else {
                                return "A Must";
                              }
                            }(),
                            // fontFamily: "Courgette",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: UsedColors.White),
                      ),
                      PMaker(
                        horizontal: 20,
                      )
                    ],
                  ),
                ),
              ],
            )),
        menuWidth: PageWidth(context),
        blurBackgroundColor: Colors.transparent,
        animateMenuItems: true,
        menuItemExtent: 100,
        menuOffset: 20,
        onPressed: () {},
        menuItems: [
          FocusedMenuItem(
              title: CMaker(
                width: PageWidth(context) - 30,
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    TMaker(
                        text: "Change",
                        fontFamily: "Courgette",
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: UsedColors.Blue),
                    Expanded(child: CMaker()),
                    Icon(
                      Icons.mode_edit,
                      color: UsedColors.Blue,
                      size: 40,
                    )
                  ],
                ),
              ),
              onPressed: () {
                print("hi");
              }),
          FocusedMenuItem(
              title: CMaker(
                width: PageWidth(context) - 30,
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    TMaker(
                        text: "Delete",
                        fontFamily: "Courgette",
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: UsedColors.red),
                    Expanded(child: CMaker()),
                    Icon(
                      Icons.delete,
                      color: UsedColors.red,
                      size: 40,
                    )
                  ],
                ),
              ),
              onPressed: () {
                Task.RemoveLocalTask(widget.file, widget.index);
                widget.onCheck!();
              }),
        ]);
  }
}
