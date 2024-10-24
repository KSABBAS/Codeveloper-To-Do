import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Tasks/LocalTasks/NoDateTasks/NoDateTask.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwoFile extends StatefulWidget {
  const PageTwoFile({super.key, required this.file});
  final String file;
  @override
  State<PageTwoFile> createState() => _PageTwoFileState();
}

class _PageTwoFileState extends State<PageTwoFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CMaker(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "images/Home.jpg",
              fit: BoxFit.fill,
            ),
          ),
          CMaker(
            child: ListView(
              children: [
                CMaker(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    children: [
                      PMaker(
                        horizontal: 20,
                      ),
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: CMaker(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.arrow_back,
                                size: 30,
                              ))),
                      Expanded(child: CMaker()),
                      CMaker(
                        height: 100,
                        alignment: Alignment.center,
                        child: TMaker(
                            text: widget.file,
                            fontFamily: UsedFonts.UsedFont,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: UsedColors.Blue),
                      ),
                      PMaker(
                        horizontal: 20,
                      ),
                    ],
                  ),
                ),
                PMaker(vertical: 20,),
                CMaker(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: CMaker(
                          alignment: Alignment.center,
                          height: 70,
                          color: UsedColors.Blue,
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          circularRadius: 20,
                          child:TMaker(
                                  text:
                                      "${Task.LocalData[widget.file]!.length} Tasks",
                                  fontFamily: UsedFonts.UsedFont,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: UsedColors.White),
                        )
                      ),
                      PMaker(
                        horizontal: 20,
                      ),
                      Expanded(child: Container()),
                      InkWell(
                          onTap: () {
                            // showDialog(
                            //   context: context,
                            //   builder: (context) {
                            //     return FilterAndSort(FilterRefresh: () {
                            //       setState(() {
                            //       });
                            //     },);
                            //   },
                            // );
                          },
                          child: CMaker(
                            width: 70,
                            border: Border.all(width: 3, color: UsedColors.mixBlue),
                            height: 70,
                            alignment: Alignment.center,
                            circularRadius: 20,
                            child: Icon(
                              Icons.display_settings,
                              size: 50,
                              color: UsedColors.mixBlue,
                            ),
                            margin: EdgeInsets.only(right: 20),
                          ),
                        ),
                      InkWell(
                          onTap: () {
                            // showDialog(
                            //   context: context,
                            //   builder: (context) {
                            //     return FilterAndSort(FilterRefresh: () {
                            //       setState(() {
                            //       });
                            //     },);
                            //   },
                            // );
                          },
                          child: CMaker(
                            border: Border.all(width: 3, color: UsedColors.mixBlue),
                            width: 70,
                            height: 70,
                            alignment: Alignment.center,
                            circularRadius: 20,
                            child: Icon(
                              Icons.filter_list,
                              size: 50,
                              color: UsedColors.mixBlue,
                            ),
                            margin: EdgeInsets.only(right: 20),
                          ),
                        ),
                    ],
                  ),
                ),
                PMaker(vertical: 40,),
                Container(
                  height: (Task.LocalData[widget.file]!.length) * 140,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: false,
                    itemCount: Task.LocalData[widget.file]!.length,
                    itemBuilder: (context, index) {
                      return NoDateTask(
                            onCheck: () {
                              print("============Refreshing ${widget.file} File......");
                              setState(() {});
                            },
                            file: widget.file,
                            index: index);
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
