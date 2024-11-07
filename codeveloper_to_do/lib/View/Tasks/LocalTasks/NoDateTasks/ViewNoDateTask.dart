import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';

class ViewPersonalNoDateTask extends StatefulWidget {
  const ViewPersonalNoDateTask(
      {super.key, required this.file, required this.index});
  final String file;
  final int index;
  @override
  State<ViewPersonalNoDateTask> createState() => _ViewPersonalNoDateTaskState();
}
class _ViewPersonalNoDateTaskState extends State<ViewPersonalNoDateTask> {
  @override
  Widget build(BuildContext context) {
  List TaskData=Task.GetLocalTaskData(widget.file, widget.index);
    return Dialog(
      child: CMaker(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 200,
        color: UsedColors.White,
        circularRadius: 20,
        child: ListView(
          children: [
            PMaker(
              vertical: 20,
            ),
            TMaker(text: TaskData[1], fontSize: 30, fontWeight:FontWeight.w600, color: UsedColors.black,fontFamily:UsedFonts.UsedFont,),
            PMaker(
              vertical: 30,
            ),
            TMaker(text: TaskData[2], fontSize: 20, fontWeight:FontWeight.w600, color: UsedColors.black,fontFamily:UsedFonts.UsedFont,),
          ],
        ),
      ),
    );
  }
}