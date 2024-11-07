import 'package:codeveloper_to_do/View/Extra/PageThreeFile/View/ManagerView.dart';
import 'package:codeveloper_to_do/View/Extra/PageThreeFile/View/MemberView.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';

class PageThreeTeamsFile extends StatefulWidget {
  const PageThreeTeamsFile(
      {super.key, required this.Project, required this.member});
  final String Project;
  final String member;
  @override
  State<PageThreeTeamsFile> createState() => _PageThreeTeamsFileState();
}

class _PageThreeTeamsFileState extends State<PageThreeTeamsFile> {
  @override
  Widget build(BuildContext context) {
    if (Task.TeamsData[widget.Project]![0][widget.member]![0] != "PM") {
      return MemberView(Project: widget.Project, member: widget.member,Position: Task.TeamsData[widget.Project]![0][widget.member]![0],);
    } else {
      return ManagerView(Project: widget.Project,member: widget.member,Position: Task.TeamsData[widget.Project]![0][widget.member]![0],);
    }
  }
}
