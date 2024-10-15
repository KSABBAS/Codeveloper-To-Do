import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';
class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TMaker(text: Task.GetLocalTaskData("prayer", 0)[0]??"noData", fontSize: 50, fontWeight:FontWeight.w500, color: Colors.black)
    ],);
  }
}