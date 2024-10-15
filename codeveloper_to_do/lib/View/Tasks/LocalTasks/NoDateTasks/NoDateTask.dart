import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';

class NoDateTask extends StatefulWidget {
  const NoDateTask({super.key, required this.file, required this.index});
  final String file;
  final int index;
  @override
  State<NoDateTask> createState() => _NoDateTaskState();
}

class _NoDateTaskState extends State<NoDateTask> {
  @override
  Widget build(BuildContext context) {
    return CMaker(
      color: const Color.fromARGB(255, 36, 255, 200),
      circularRadius: 20,
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      height: 100,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CMaker(
              height: 100,
              child: Column(
                children: [
                  CMaker(
                    padding: EdgeInsets.only(left: 20),
                    height: 50,
                    child: Text(Task.GetLocalTaskData(
                        widget.file, widget.index)[1]),
                    alignment: Alignment.center,
                  ),
                  CMaker(
                    height: 50,
                    padding: EdgeInsets.only(left: 25),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    child: Text(
                        Task.GetLocalTaskData(widget.file, widget.index)[2]),
                    //  color: const Color.fromARGB(5, 90, 106, 102),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: CMaker(
            height: 100,
            alignment: Alignment.center,
            child: Checkbox(
              value: Task.GetLocalTaskData(widget.file, widget.index)[3],
              onChanged: (value) {
              },
            ),
          )),
        ],
      ),
    );
  }
}
