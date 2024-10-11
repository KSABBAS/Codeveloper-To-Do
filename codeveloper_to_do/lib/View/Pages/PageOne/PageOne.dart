import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/SpecificTasks/TaskWithDataToDo.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  Task task = new Task();
  TaskWithDataToDo taskWithDataToDo = new TaskWithDataToDo();
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      PMaker(top: 50),
      CMaker(
        color: const Color.fromARGB(115, 96, 85, 85),
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        circularRadius: 20,
        child: Row(
          children: [
            TMaker(
                text: "Done",
                fontSize: 50,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 250, 107, 107)),
            TMaker(
                text: "3/6",
                fontSize: 50,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 154, 35, 35)),
            PMaker(top: 75),
          ],
        ),
      ),
      PMaker(
        top: 10,
        left: 5,
      ),
      CMaker(
        padding: EdgeInsets.only(right: 150),
        width: double.infinity,
        height: 100,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: CMaker(
          alignment: Alignment.center,
          circularRadius: 20,
          child: TMaker(
            text: "filter",
            fontSize: 50,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          color: const Color.fromARGB(115, 96, 85, 85),
          margin: EdgeInsets.symmetric(horizontal: 50),
          height: 75,
        ),
        alignment: Alignment.centerLeft,
      ),
      PMaker(top: 50),
      Container(
          height: 900,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: false,
            itemCount: 1,
            itemBuilder: (context, index) {
              return CMaker(
                  color: const Color.fromARGB(255, 36, 255, 200),
                  circularRadius: 20,
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
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
                                    Expanded(
                                      child: CMaker(
                                        height: 50,
                                        child: Text("Hager"),
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Expanded(
                                      child: CMaker(
                                        alignment: Alignment.center,
                                        height: 50,
                                        child: Text("Hager"),
                                      ),
                                    ),
                                    Expanded(
                                        child: CMaker(
                                      alignment: Alignment.center,
                                      height: 50,
                                      child: Text("Hager"),
                                    )),
                                  ],
                                ),
                              ),
                              CMaker(
                                height: 50,
                                padding: EdgeInsets.only(left: 25),
                                alignment: Alignment.centerLeft,
                                width: double.infinity,
                                child: Text("Hager"),
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
                          value: true,
                          onChanged: (value) {},
                        ),
                      )),
                    ],
                  ));
            },
          )),
    ]);
  }
}
