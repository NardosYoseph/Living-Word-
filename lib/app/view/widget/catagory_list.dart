import 'package:flutter/material.dart';
import 'package:living_word/app/view/widget/cards/commoncard.dart';
import 'package:living_word/app/view/widget/cards/selectcard.dart';

class CatagoryList extends StatefulWidget {
   CatagoryList({super.key});

  @override
  State<CatagoryList> createState() => _CatagoryListState();
}

class _CatagoryListState extends State<CatagoryList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
               CommonCard(width: 250,url: "assets/lwpastor.jpg",),
                SizedBox(width: 5,),
                CommonCard(width: 250,url: "assets/bible.jpg"),
                SizedBox(width: 5,),
              CommonCard(width: 250,url: "assets/preach.jpg"),
              
                ],
            )
          );
  }
}