import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Task.GetTeamTaskData("Project 2", "Mohamed hosny", 0).length,
      itemBuilder: (context, index) {
        // Task.AddTeamValue("Project 2", "Mohamed hosny", 1,"hi");
        return TMaker(
            text: Task.GetTeamTaskData("Project 2", "Mohamed hosny", 0)[index],
            fontSize: 50,
            fontWeight: FontWeight.w400,
            color: Colors.black);
      },
    );
  }
}
