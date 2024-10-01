import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/HomePage.dart';
import 'package:codeveloper_to_do/auth/Login/LogInView.dart';
import 'package:codeveloper_to_do/auth/SignUp/SignUpView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

void main() {
  runApp(GetMaterialApp(getPages: [
    GetPage(name: "/Home", page: () => HomePage()),
    GetPage(name: "/LogIn", page: () => Loginview()),
    GetPage(name: "/SignUp", page: () => Signupview()),
  ], debugShowCheckedModeBanner: false, home: ToDoApp()));
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return SplashViewPage(
      poweredByColor: UsedColors.White,
      backgroundColor: UsedColors.Orange,
      child: Center(child: Text("hi")),
      afterAnimationIsDone: () {
        Get.offNamed("LogIn");
        //kareem said edit
        //kareem ahmed edit
        //hager edit
      },
    );
  }
}
