import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Filter extends StatefulWidget {
  const Filter({super.key,required this.FilterFilterRefresh});
  final Function()? FilterFilterRefresh;
  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: CMaker(
        height: 500,
        width: 200,
        child: Column(
          children: [
            CMaker(
              circularRadius: 20,
              height: 440,
              child: MultiCBox(
                textFontSize: 25,
                textColor: UsedColors.White,
                textFontFamily: UsedFonts.UsedFont,
                textFontWeight: FontWeight.w500,
                childWidth: 240,
                columnSpaces: 20,
                childHeight: 80,
                childColor: UsedColors.Blue,
                rowSpaces: 15,
                list: ["type", "frquancy","Done","not Done","Source","Importance"],
                crossAxisCount: 1,
                onChanged: (SelectedValues) {},
              ),
              color: UsedColors.White,
            ),
            PMaker(
              vertical: 10,
            ),
            CMaker(
              padding: EdgeInsets.only(right: 20),
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  // here we will add the function that sorts the tasks by the chosen values
                  Get.back();
                  Get.back();
                  widget.FilterFilterRefresh!();
                },
                child: CMaker(
                  alignment: Alignment.center,
                  width: 100,
                  height: 40,
                  border: Border.all(color: UsedColors.Blue),
                  circularRadius: 20,
                  child: TMaker(
                    text: "Apply",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: UsedColors.Blue,
                    fontFamily: UsedFonts.UsedFont,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
