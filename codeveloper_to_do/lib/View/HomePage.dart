import 'package:codeveloper_to_do/View/Pages/PageOne.dart';
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
  List<Widget> Pages = [
    PageOne(),
    Center(
      child: Text("secound page"),
    ),
  ];
  NotchBottomBarController pageController = NotchBottomBarController(index: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedNotchBottomBar(
        kBottomRadius: 0,
        kIconSize: 20,
        onTap: (value) {
          print(value);
        },
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Page 1',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.star,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.star,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Page 2',
          ),
        ],
        notchBottomBarController: pageController,
      ),
      // body:Pages[PageController.index],
      body: PageView.builder(
        controller: PageController(initialPage: 0),
        itemBuilder: (context, index) {
          return Pages[pageController.index];
        },
      ),
    );
  }
}
