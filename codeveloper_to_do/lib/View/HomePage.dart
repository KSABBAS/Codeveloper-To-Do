import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Pages/PageFour/PageFour.dart';
import 'package:codeveloper_to_do/View/Pages/PageOne/PageOne.dart';
import 'package:codeveloper_to_do/View/Pages/PageThree/PageThree.dart';
import 'package:codeveloper_to_do/View/Pages/PageTwo/PageTwo.dart';
import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotchBottomBarController pageController = NotchBottomBarController(index: 0);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      body: NavBar(
        BackgroundImage: Image.asset( "images/Home.jpg",fit: BoxFit.fill,),
        // pageBackgroundColor: UsedColors.White,
        iconFramePadding: 10,
        iconFrameHeight: 60,
        BarShadow: [
          BoxShadow(offset: Offset(2, 2),
          blurRadius: 10,
          color: const Color.fromARGB(70, 0, 0, 0)
          ),
          BoxShadow(offset: Offset(2, 2),
          blurRadius: 10,
          color: const Color.fromARGB(70, 0, 0, 0)
          ),
        ],
        iconFrameWidth: 60,
        selectedBackgeoundIconColor: const Color.fromARGB(230, 255, 255, 255),
        barColor:UsedColors.Blue,
        pages: [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour()
  ], iconsList: [
        Image.asset("images/bottomNavigationBarIcons/home.png"),
        Image.asset("images/bottomNavigationBarIcons/Task.png"),
        Image.asset("images/bottomNavigationBarIcons/Groub.png"),
        Image.asset("images/bottomNavigationBarIcons/person.png")
  ], height: 80, width: PageWidth(context)-50),
    );
  }
}
