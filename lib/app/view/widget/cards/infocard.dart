import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:living_word/app/view/widget/Text/normaltext.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 370,
      child: Card(
        color: const Color(0xFF821877),
        //elevation: 10,
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
        ),
    
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(
    FontAwesomeIcons.peopleGroup,
    color: Colors.white,
    size: 50, // Adjust color as needed
  ),
  NormalText(text: "1K+ People",color: Colors.white,fontSize: 18,)
],
            ), 
            SizedBox(width: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
children: [
 Icon(
    FontAwesomeIcons.calendarCheck,
    color: Colors.white,
    size: 50, // Adjust color as needed
  ),
  NormalText(text: "3+ Event/Week",color: Colors.white,fontSize: 18,),

],
            )
          ],
        )
      ),
    );
 
  }
}