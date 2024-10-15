import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/SignUpData.dart';
import 'package:codeveloper_to_do/data/loginData.dart';
import 'package:codeveloper_to_do/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Loginview extends StatelessWidget {
  Loginview({super.key});
  final GlobalKey<FormState> LogInKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      body: Form(
        key: LogInKey,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "images/Background.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Expanded(
                  flex: 20,
                  child: CMaker(
                      alignment: Alignment.center,
                      child: TMaker(
                          fontFamily: "Courgette",
                          text: "Log In",
                          fontSize: 70,
                          fontWeight: FontWeight.w600,
                          color: UsedColors.White)),
                ),
                CMaker(
                  color: UsedColors.White,
                  circularRadius: 20,
                  height: 400,
                  width: double.infinity,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: const Color.fromARGB(91, 0, 0, 0),
                        offset: Offset(2, 2),
                        spreadRadius: .3)
                  ],
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: ListView(
                    children: [
                      PMaker(
                        top: 50,
                      ),
                      TFFMaker(
                        onSaved: (value) {
                          LogInData.Email = value;
                        },
                        label: TMaker(
                            fontFamily: "Courgette",
                            text: "Email",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 154, 154, 154)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is empty";
                          }
                          if ((!value.endsWith("@gmail.com") ||
                                  !(value.length > 10)) &&
                              (!value.endsWith("@yahoo.com") ||
                                  !(value.length > 10))) {
                            return "صيغة الايميل ليسة صحيحة";
                          }
                          return null;
                        },
                        enabledCircularRadius: 15,
                        focusedCircularRadius: 15,
                        enabledBorderwidth: 1,
                        focusedBorderwidth: 2,
                        enabledBorderColor: Colors.black,
                        focusedBorderColor: UsedColors.Blue,
                      ),
                      PMaker(
                        top: 20,
                      ),
                      TFFMaker(
                        onSaved: (value) {
                          LogInData.password = value;
                        },
                        label: TMaker(
                            fontFamily: "Courgette",
                            text: "Password",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 154, 154, 154)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "field is empty";
                          }
                          if (value.length < 6) {
                            return "it must be longer than 6 characters";
                          }
                          return null;
                        },
                        enabledCircularRadius: 15,
                        focusedCircularRadius: 15,
                        enabledBorderwidth: 1,
                        focusedBorderwidth: 2,
                        enabledBorderColor: Colors.black,
                        focusedBorderColor: UsedColors.Blue,
                      ),
                      PMaker(
                        top: 50,
                      ),
                      MyButton(
                        textFontFamily: "Courgette",
                        buttonHeight: 60,
                        buttonWidth: 140,
                        textFont: 25,
                        text: "Login",
                        buttonColor: UsedColors.Blue,
                        onTap: () async {
                          if (LogInKey.currentState!.validate()) {
                            LogInKey.currentState!.save();
                            if(await LogInData.storeLogInInfo()){
                              UserData =(await SignUpData.GetUserData())!;
                              print("UserData=====================$UserData");
                            Get.toNamed("Home");
                            }
                          }
                        },
                      ),
                      PMaker(
                        top: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TMaker(
                              fontFamily: "Courgette",
                              text: "First time ?",
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 165, 165, 165)),
                          PMaker(
                            left: 10,
                          ),
                          TextButton(
                              onPressed: () {
                                Get.offNamed("SignUp");
                              },
                              child: TMaker(
                                  fontFamily: "Courgette",
                                  text: "Sign Up",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: UsedColors.Blue)),
                        ],
                      ),
                      PMaker(
                        top: 30,
                      ),
                    ],
                  ),
                ),
                Expanded(flex: 2, child: Container()),
                CMaker(
                  color: UsedColors.White,
                  circularRadius: 20,
                  height: 150,
                  width: double.infinity,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: const Color.fromARGB(91, 0, 0, 0),
                        offset: Offset(2, 2),
                        spreadRadius: .3)
                  ],
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      TMaker(
                          fontFamily: "Courgette",
                          text: "Our Social Media",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 171, 171, 171)),
                      Expanded(child: CMaker()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: CMaker(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset("images/5968764.png"))),
                          IconButton(
                              onPressed: () {},
                              icon: CMaker(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset("images/15707749.png"))),
                          IconButton(
                              onPressed: () {},
                              icon: CMaker(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset("images/4494497.png"))),
                        ],
                      ),
                      Expanded(child: CMaker()),
                    ],
                  ),
                ),
                Expanded(flex: 6, child: Container()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
