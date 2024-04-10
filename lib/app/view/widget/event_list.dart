import 'package:flutter/material.dart';
import 'package:living_word/app/view/widget/cards/commoncard.dart';
import 'package:living_word/app/view/widget/cards/selectcard.dart';

class EventList extends StatefulWidget {
  EventList({super.key});

  @override
  State<EventList> createState() => _EventListtState();
}

class _EventListtState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 580,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
                child: CommonCard(
              width: 370,url: "assets/youth.jpg"
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: CommonCard(
              width: 370,url: "assets/worship.jpg"
            )),
            SizedBox(height: 10),
            Center(
                child: CommonCard(
              width: 370,url: "assets/preach.jpg"
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: CommonCard(
              width: 370,url: "assets/lwpastor.jpg"
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: CommonCard(
              width: 370,url: "assets/prayer.jpg"
            )),
          ],
        ));
  }
}
