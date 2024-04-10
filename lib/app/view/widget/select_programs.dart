import 'package:flutter/material.dart';
import 'package:living_word/app/view/widget/cards/selectcard.dart';

class SelectProgramme extends StatefulWidget {
   SelectProgramme({super.key});

  @override
  State<SelectProgramme> createState() => _SelectProgrammeState();
}

class _SelectProgrammeState extends State<SelectProgramme> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SelectCard(text:"Worship"),
                SizedBox(width: 5,),
                SelectCard(text:"Prayer"),
                SizedBox(width: 5,),
                SelectCard(text:"Word"),
                SizedBox(width: 5,),
                SelectCard(text:"Bible study"),
                SizedBox(width: 5,),
                SelectCard(text:"Quier"),
                SizedBox(width: 5,),
                SelectCard(text:"Youth"),
                ],
            )
          );
  }
}