import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:flutter/material.dart';

class DatedTask extends StatefulWidget {
  const DatedTask({super.key,required this.taskData});
  final List taskData;
  @override
  State<DatedTask> createState() => _DatedTaskState();
}

class _DatedTaskState extends State<DatedTask> {
  @override
  Widget build(BuildContext context) {
    return CMaker(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: UsedColors.TaskColor,
      circularRadius: 20,
      boxShadow: const [
        BoxShadow(
            offset: Offset(2, 2),
            color: Color.fromARGB(99, 0, 0, 0),
            blurRadius: 10,
            spreadRadius: .2),
      ],
      child: Row(
        children: [
          // Text("${widget.taskData[0]}"),
          // Text("${widget.taskData[1]}"),
          // Text("${widget.taskData[2]}"),
          Text("${widget.taskData[4]}"),
        ],
      ),
    );
  }
}
