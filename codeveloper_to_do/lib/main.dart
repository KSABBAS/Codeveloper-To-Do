import 'package:codeveloper_to_do/View/HomePage.dart';
import 'package:codeveloper_to_do/auth/Login/LogInView.dart';
import 'package:codeveloper_to_do/auth/SignUp/SignUpView.dart';
import 'package:codeveloper_to_do/data/SignUpData.dart';
import 'package:codeveloper_to_do/data/loginData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'data/Tasks/Task.dart';

late bool loggedIn;
List<String>? UserData;
List<List>? TodaysList;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  loggedIn = await LogInData.LoggedInCheck();
  if (loggedIn) {
    UserData = (await SignUpData.GetUserData())!;
    TodaysList = Task.MakeTodaysList(UserData![1]);
  }
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
    print("=========== Logged In : $loggedIn");
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return (loggedIn
        // true
        )
        ? HomePage()
        : Loginview();
  }
}
