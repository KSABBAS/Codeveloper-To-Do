import 'package:codeveloper_to_do/Constants/ColorsUsded.dart';
import 'package:codeveloper_to_do/Constants/Fonts.dart';
import 'package:codeveloper_to_do/MyTools.dart';
import 'package:codeveloper_to_do/View/Extra/Filter/Filter.dart';
import 'package:codeveloper_to_do/View/Extra/Filter/Sort.dart';
import 'package:flutter/material.dart';

class FilterAndSort extends StatelessWidget {
  const FilterAndSort({super.key, required this.FilterRefresh});
  final Function()? FilterRefresh;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: CMaker(
        circularRadius: 20,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => Filter(
                          FilterFilterRefresh: () {
                            FilterRefresh!();
                          },
                        ));
              },
              child: CMaker(
                  height: 80,
                  width: 240,
                  circularRadius: 20,
                  color: UsedColors.Blue,
                  child: TMaker(
                      text: "Filter",
                      fontSize: 50,
                      fontFamily: UsedFonts.UsedFont,
                      fontWeight: FontWeight.w700,
                      color: UsedColors.White)),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => Sort(
                          SortFilterRefresh: () {
                            FilterRefresh!();
                          },
                        ));
              },
              child: CMaker(
                  height: 80,
                  width: 240,
                  circularRadius: 20,
                  color: UsedColors.Blue,
                  child: TMaker(
                      text: "Sort",
                      fontSize: 50,
                      fontFamily: UsedFonts.UsedFont,
                      fontWeight: FontWeight.w700,
                      color: UsedColors.White)),
            ),
          ],
        ),
        color: UsedColors.White,
      ),
    );
  }
}
