import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sort extends StatefulWidget {
  const Sort({super.key,required this.SortFilterRefresh});
  final Function()? SortFilterRefresh;
  @override
  State<Sort> createState() => _SortState();
}

class _SortState extends State<Sort> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: CMaker(
        height: 270,
        width: 200,
        child: Column(
          children: [
            CMaker(
              circularRadius: 20,
              height: 200,
              child: MultiRButton(
                fillColor: WidgetStateProperty.all(UsedColors.White),
                textFontSize: 25,
                textColor: UsedColors.White,
                textFontFamily: UsedFonts.UsedFont,
                textFontWeight: FontWeight.w500,
                childWidth: 240,
                columnSpaces: 20,
                childHeight: 80,
                childColor: UsedColors.Blue,
                rowSpaces: 15,
                list: ["Date", "Impotance"],
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
                  widget.SortFilterRefresh!();
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
