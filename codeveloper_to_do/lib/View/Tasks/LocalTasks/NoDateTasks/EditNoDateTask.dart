import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPersonalNoDateTask extends StatefulWidget {
  const EditPersonalNoDateTask(
      {super.key, required this.file, required this.index,this.refreshTask});
  final String file;
  final int index;
  final void Function()? refreshTask;
  @override
  State<EditPersonalNoDateTask> createState() => _EditPersonalNoDateTaskState();
}

class _EditPersonalNoDateTaskState extends State<EditPersonalNoDateTask> {
  String? NewTitle;
  String? NewBody;
  int? NewImpotance;

  @override
  Widget build(BuildContext context) {
    List TaskData = Task.GetLocalTaskData(widget.file, widget.index);
    return Dialog(
      child: CMaker(
        width: double.infinity,
        height: 400,
        color: UsedColors.White,
        circularRadius: 20,
        child: Column(
          children: [
            PMaker(
              vertical: 30,
            ),
            CMaker(
              width: double.infinity,
              alignment: Alignment.center,
              child: CMaker(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                circularRadius: 20,
                color: UsedColors.Blue,
                child: TMaker(
                    text: widget.file,
                    fontFamily: UsedFonts.UsedFont,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: UsedColors.White),
              ),
            ),
            PMaker(
              vertical: 30,
            ),
            CMaker(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TFFMaker(
                  onChanged: (value) {
                    NewTitle = value;
                  },
                  label: TMaker(
                    text: "Title",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: UsedColors.Blue,
                    fontFamily: UsedFonts.UsedFont,
                  ),
                  initialValue: TaskData[1],
                )),
            PMaker(
              vertical: 20,
            ),
            CMaker(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TFFMaker(
                  onChanged: (value) {
                    NewBody = value;
                  },
                  lines: 3,
                  label: TMaker(
                    text: "Body",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: UsedColors.Blue,
                    fontFamily: UsedFonts.UsedFont,
                  ),
                  initialValue: TaskData[2],
                )),
            PMaker(
              vertical: 20,
            ),
            CMaker(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CMaker(
                    width: 150,
                    circularRadius: 20,
                    color: UsedColors.lightGray,
                    alignment: Alignment.center,
                    child: DDButton(
                      initValueIndex: TaskData[5]-1,
                      values: [
                        "Not Now",
                        "In Mind",
                        "Important",
                        "Significant",
                        "A Must"
                      ],
                      onChanged: (value) {
                        if (value == "Not Now") {
                          NewImpotance = 1;
                        } else if (value == "In Mind") {
                          NewImpotance = 2;
                        } else if (value == "Important") {
                          NewImpotance = 3;
                        } else if (value == "Significant") {
                          NewImpotance = 4;
                        } else if (value == "A Must") {
                          NewImpotance = 5;
                        }
                      },
                    ),
                  ),
                  MyButton(
                    text: "Ok",
                    textFontFamily: UsedFonts.UsedFont,
                    buttonColor: UsedColors.Blue,
                    textFontWeight: FontWeight.w600,
                    buttonHeight: 45,
                    onTap: () {
                      Task.changeLocalTaskData(
                          widget.file,
                          widget.index,
                          NewTitle ?? TaskData[1],
                          NewBody ?? TaskData[2],
                          NewImpotance ?? TaskData[5]);
                      Get.back();
                      widget.refreshTask!();
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
