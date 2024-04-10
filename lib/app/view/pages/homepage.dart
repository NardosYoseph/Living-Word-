import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:living_word/app/view/widget/Text/bigtext.dart';
import 'package:living_word/app/view/widget/Text/normaltext.dart';
import 'package:living_word/app/view/widget/appbar/appbar.dart';
import 'package:living_word/app/view/widget/cards/infocard.dart';
import 'package:living_word/app/view/widget/cards/selectcard.dart';
import 'package:living_word/app/view/widget/catagory_list.dart';
import 'package:living_word/app/view/widget/find_leaders.dart';
import 'package:living_word/app/view/widget/select_programs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Living"),
                    BigText(text: "Word"),
                  ],
                ),
                //  SizedBox(width: 5,),
                Icon(
                  FontAwesomeIcons.cross,
                  color: Colors.black,
                  size: 70, // Adjust color as needed
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                NormalText(text: "International Church"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InfoCard(),
            SizedBox(
              height: 20,
            ),
            SelectProgramme(),
            SizedBox(
              height: 10,
            ),
            CatagoryList(),
            SizedBox(
              height: 10,
            ),
            FindLeaders()
          ],
        ));
  }
}
