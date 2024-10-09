import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Pages/PageOne/PageOne.dart';
import 'package:codeveloper_to_do/View/Pages/PageTwo/PageTwo.dart';
import 'package:codeveloper_to_do/data/Tasks/SpecificTasks/TaskWithDataToDo.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotchBottomBarController pageController = NotchBottomBarController(index: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UsedColors.White,
      body: NavBar(
        iconFramePadding: 10,
        iconFrameHeight: 60,
        iconFrameWidth: 60,
        sectedBackgeoundIconColor: UsedColors.White,
        barColor: UsedColors.lightGray,
        pages: [
    PageOne(),
    PageTwo(),
    Center(
      child: Text("third page"),
    ),
    Center(
      child: Text("fourth page"),
    ),
  ], iconsList: [
        Image.asset("images/bottomNavigationBarIcons/home.png"),
        Image.asset("images/bottomNavigationBarIcons/Task.png"),
        Image.asset("images/bottomNavigationBarIcons/Groub.png"),
        Image.asset("images/bottomNavigationBarIcons/person.png")
  ], height: 80, width: PageWidth(context)-50),
    );
  }
}
