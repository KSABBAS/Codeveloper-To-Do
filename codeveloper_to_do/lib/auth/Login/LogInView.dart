import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      backgroundColor: UsedColors.Blue,
      body: Column(
        children: [
          Expanded(
            flex: 20,
            child: CMaker(
                alignment: Alignment.center,
                child: TMaker(
                    text: "Log In",
                    fontSize: 40,
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
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                PMaker(
                  top: 20,
                ),
                TextField(
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    label: TMaker(
                        text: "Email or Phone",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 154, 154, 154)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                PMaker(
                  top: 20,
                ),
                TextField(
                  onChanged: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    label: TMaker(
                        text: "password",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 154, 154, 154)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                PMaker(
                  top: 50,
                ),
                MyButton(
                  text: "Login",
                  buttonColor: UsedColors.Blue,
                  onTap: () {},
                ),
                PMaker(
                  top: 30,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    TMaker(
                        text: "First time ?",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 165, 165, 165)),
                    PMaker(
                      left: 10,
                    ),
                    TextButton(onPressed:() {
                    }, child: TMaker(
                            text: "Sign Up",
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: UsedColors.Blue)),
                  ],
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
            child: Column(children: [
              TMaker(
                text: "Our Social Media",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 171, 171, 171)),
              Expanded(child: CMaker()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              IconButton(onPressed:() {
              }, icon: Icon(Icons.facebook,size: 60,color: UsedColors.Blue,)),
              IconButton(onPressed:() {
              }, icon: Icon(Icons.tiktok,size: 60,color: UsedColors.Blue,)),
              IconButton(onPressed:() {
              }, icon: Icon(Icons.tiktok,size: 60,color: UsedColors.Blue,)),
              ],),
              Expanded(child: CMaker()),
            ],),
          ),
          Expanded(flex: 6, child: Container()),
        ],
      ),
    );
  }
}