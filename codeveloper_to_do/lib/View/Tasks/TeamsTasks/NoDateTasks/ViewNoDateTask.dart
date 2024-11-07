import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';

class ViewTeamNoDateTask extends StatefulWidget {
  const ViewTeamNoDateTask(
      {super.key,required this.program,
    required this.member,
    required this.index,});
  final String program;
  final String member;
  final int index;
  @override
  State<ViewTeamNoDateTask> createState() => _ViewTeamNoDateTaskState();
}
class _ViewTeamNoDateTaskState extends State<ViewTeamNoDateTask> {
  @override
  Widget build(BuildContext context) {
  List TaskData=Task.GetTeamTaskData(widget.program, widget.member, widget.index);
    return Dialog(
      child: CMaker(
        width: double.infinity,
        height: 400,
        color: UsedColors.White,
        circularRadius: 20,
        child: ListView(
          children: [
            PMaker(
              vertical: 20,
            ),
            TMaker(text: TaskData[1], fontSize: 30, fontWeight:FontWeight.w600, color: UsedColors.black,fontFamily:UsedFonts.UsedFont,),
            PMaker(
              vertical: 20,
            ),
            TMaker(text: TaskData[2], fontSize: 20, fontWeight:FontWeight.w600, color: UsedColors.black,fontFamily:UsedFonts.UsedFont,),
          ],
        ),
      ),
    );
  }
}