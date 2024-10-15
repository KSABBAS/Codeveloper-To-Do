import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';

class TeamDatedTask extends StatefulWidget {
  const TeamDatedTask({
    super.key,
    required this.program,
    required this.member,
    required this.index,
  });
  final String program;
  final String member;
  final int index;
  @override
  State<TeamDatedTask> createState() => _TeamDatedTaskState();
}

class _TeamDatedTaskState extends State<TeamDatedTask> {
  @override
  Widget build(BuildContext context) {
    return CMaker(
          color: const Color.fromARGB(255, 255, 218, 36),
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
                        child: Row(
                          children: [
                            CMaker(
                                height: 50,
                                padding: EdgeInsets.only(left: 20),
                                child: Text(Task.GetTeamTaskData(widget.program,widget.member, widget.index)[1]),
                                alignment: Alignment.center,
                            ),
                            Expanded(
                              child: CMaker(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(Task.GetTeamTaskData(widget.program,widget.member, widget.index)[0]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CMaker(
                        height: 50,
                        padding: EdgeInsets.only(left: 25),
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        child: Text(Task.GetTeamTaskData(widget.program,widget.member, widget.index)[2]),
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
                  value: Task.GetTeamTaskData(widget.program,widget.member, widget.index)[3],
                  onChanged: (value) {},
                ),
              )),
            ],
          ),
    );
  }
}
