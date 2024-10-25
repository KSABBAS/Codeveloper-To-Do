import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/data/Tasks/Task.dart';
import 'package:codeveloper_to_do/main.dart';
import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PMaker(
          vertical: 20,
        ),
        CMaker(
          child: Row(
            children: [
              PMaker(
                horizontal: 20,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: UsedColors.black,
                  )),
              Expanded(
                child: Container(),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, color: UsedColors.black),
              ),
              PMaker(
                horizontal: 10,
              ),
            ],
          ),
        ),
        PMaker(
          vertical: 30,
        ),
        CMaker(
          width: double.infinity,
          alignment: Alignment.center,
          child: CMaker(
              circularRadius: 200,
              boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 10,
                    color: const Color.fromARGB(100, 0, 0, 0))
              ],
              height: 150,
              width: 150,
              child: CircleAvatar(
                child: ClipOval(child: Image.network(UserData![4])),
              )),
        ),
        PMaker(
          vertical: 40,
        ),
        CMaker(
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: TMaker(
              text: "Name",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: UsedFonts.UsedFont,
              color: Color.fromARGB(100, 0, 0, 0)),
        ),
        CMaker(
          width: double.infinity,
          height: 60,
          circularRadius: 20,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerLeft,
          color: UsedColors.White,
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 10,
              color: Color.fromARGB(100, 0, 0, 0)
            )
          ],
          child: TMaker(
              text: UserData![0],
              fontSize: 25,
              fontWeight: FontWeight.w600,
              fontFamily: UsedFonts.UsedFont,
              color: Colors.black),
        ),
        PMaker(
          vertical: 10,
        ),
        CMaker(
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: TMaker(
              text: "Email",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: UsedFonts.UsedFont,
              color: Color.fromARGB(100, 0, 0, 0)),
        ),
        CMaker(
          width: double.infinity,
          height: 60,
          circularRadius: 20,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerLeft,
          color: UsedColors.White,
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 10,
              color: Color.fromARGB(100, 0, 0, 0)
            )
          ],
          child: TMaker(
              text: UserData![1],
              fontSize: 25,
              fontWeight: FontWeight.w600,
              fontFamily: UsedFonts.UsedFont,
              color: Colors.black),
        ),
        PMaker(
          vertical: 10,
        ),
        CMaker(
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: TMaker(
              text: "Password",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: UsedFonts.UsedFont,
              color: Color.fromARGB(100, 0, 0, 0)),
        ),
        CMaker(
          width: double.infinity,
          height: 60,
          circularRadius: 20,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerLeft,
          color: UsedColors.White,
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 10,
              color: Color.fromARGB(100, 0, 0, 0)
            )
          ],
          child: TMaker(
              text: UserData![3],
              fontSize: 25,
              fontWeight: FontWeight.w600,
              fontFamily: UsedFonts.UsedFont,
              color: Colors.black),
        ),
        PMaker(
          vertical: 10,
        ),
        CMaker(
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: TMaker(
              text: "Number",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: UsedFonts.UsedFont,
              color: Color.fromARGB(100, 0, 0, 0)),
        ),
        CMaker(
          width: double.infinity,
          height: 60,
          circularRadius: 20,
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(left: 30),
          alignment: Alignment.centerLeft,
          color: UsedColors.White,
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 10,
              color: Color.fromARGB(100, 0, 0, 0)
            )
          ],
          child: TMaker(
              text: UserData![2],
              fontSize: 25,
              fontWeight: FontWeight.w600,
              fontFamily: UsedFonts.UsedFont,
              color: Colors.black),
        ),
        PMaker(vertical: 20,),
        CMaker(
          width: double.infinity,
          child: Row(children: [
            CMaker(
              width: double.infinity,
              height: 60,
              circularRadius: 20,
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              color: UsedColors.White,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 10,
                  color: Color.fromARGB(100, 0, 0, 0)
                )
              ],
              child: TMaker(
                  text: "Edit",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: UsedFonts.UsedFont,
                  color: Colors.black),
                      ),
            
          CMaker(
              height: 60,
              circularRadius: 20,
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              color: UsedColors.White,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 10,
                  color: Color.fromARGB(100, 0, 0, 0)
                )
              ],
              child: TMaker(
                  text: "Logout",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: UsedFonts.UsedFont,
                  color: Colors.black),
            ),

          ],),
        )
      ],
    );
  }
}
