import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Tasks/TeamsTasks/NoDateTasks/TeamEditNoDateTask.dart';
import 'package:codeveloper_to_do/View/Tasks/TeamsTasks/NoDateTasks/ViewNoDateTask.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:get/get.dart';

class TeamNoDateTask extends StatefulWidget {
  TeamNoDateTask({super.key,
  required this.program,
    required this.member,
    required this.index,
    this.onCheck
  });
  final String program;
  final String member;
  final int index;
  void Function()? onCheck;
  @override
  State<TeamNoDateTask> createState() => _TeamNoDateTaskState();
}

class _TeamNoDateTaskState extends State<TeamNoDateTask> {
  @override
  Widget build(BuildContext context) {
    return FocusedMenuHolder(
        menuWidth: PageWidth(context),
        blurBackgroundColor: Colors.transparent,
        animateMenuItems: true,
        menuItemExtent: 100,
        menuOffset: 20,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return ViewTeamNoDateTask(
                  program: widget.program,member: widget.member, index: widget.index);
            },
          );
        },
        menuItems: [
          FocusedMenuItem(
              title: CMaker(
                width: PageWidth(context) - 30,
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    TMaker(
                        text: "Change",
                        fontFamily: UsedFonts.UsedFont,
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
                showDialog(
                    context: context,
                    builder: (context) {
                      return EditTeamNoDateTask(
                        refreshTask: () {
                          setState(() {
                          });
                        },
                        program: widget.program,
                        member: widget.member,
                        index: widget.index,
                      );
                    });
              }),
          FocusedMenuItem(
              title: CMaker(
                width: PageWidth(context) - 30,
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    TMaker(
                        text: "Delete",
                        fontFamily: UsedFonts.UsedFont,
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
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: CMaker(
                        circularRadius: 20,
                        height: 200,
                        width: double.infinity,
                        color: UsedColors.White,
                        child: Column(
                          children: [
                            Spacer(),
                            TMaker(
                              text: "Are you sure",
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: UsedColors.black,
                              fontFamily: UsedFonts.UsedFont,
                            ),
                            PMaker(
                              vertical: 30,
                            ),
                            CMaker(
                              width: PageWidth(context) - 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MyButton(
                                    text: "Yes",
                                    buttonColor: UsedColors.Blue,
                                    onTap: () {
                                      Get.back();
                                      Task.RemoveTeamTask(widget.program,widget.member ,widget.index);
                                      widget.onCheck!();
                                    },
                                  ),
                                  MyButton(
                                    text: "No",
                                    buttonColor: UsedColors.Blue,
                                    onTap: () {
                                      Get.back();
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
        ],
        child: CMaker(
          color: UsedColors.lightGray,
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
                  checkColor: UsedColors.White,
                            overlayColor:
                                WidgetStateProperty.all(UsedColors.Blue),
                            activeColor: UsedColors.Blue,
                            side: BorderSide(color: UsedColors.Blue),
                            shape: CircleBorder(side: BorderSide()),
                  value: Task.GetTeamTaskData(widget.program,widget.member, widget.index)[3],
                  onChanged: (value) {
                    Task.TeamsData[widget.program]![0][widget.member]!
                      [1][widget.index]![3] = !Task.TeamsData[widget.program]![0][widget.member]!
                      [1][widget.index]![3];
                      widget.onCheck!();
                  },
                ),
              ),),
                    PMaker(
                      horizontal: 10,
                    ),
                    TMaker(
                        text:
                            Task.GetTeamTaskData(widget.program,widget.member ,widget.index)[1],
                        fontFamily: UsedFonts.UsedFont,
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
                        border: Border.all(color: UsedColors.gray),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        circularRadius: 20,
                        child: TMaker(
                            text: "Team",
                            fontFamily: UsedFonts.UsedFont,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: UsedColors.Blue),
                      ),
                      PMaker(
                        horizontal: 10,
                      ),
                      CMaker(
                        border: Border.all(color: UsedColors.gray),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        circularRadius: 20,
                        child: TMaker(
                            text: (widget.program.length>8)?widget.program.substring(0,8)+"..":widget.program,
                            fontFamily: UsedFonts.UsedFont,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: UsedColors.Blue),
                      ),
                      Expanded(child: CMaker()),
                      CMaker(
                        border: Border.all(color: UsedColors.gray),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        circularRadius: 20,
                        child: TMaker(
                            text: () {
                              int importance = Task.GetTeamTaskData(
                                  widget.program,widget.member ,widget.index)[5];
                              if (importance == 1) {
                                return "Not Now";
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
                            fontFamily: UsedFonts.UsedFont,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: UsedColors.Blue),
                      ),
                      PMaker(
                        horizontal: 20,
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
