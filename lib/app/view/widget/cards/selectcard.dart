import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:living_word/app/view/widget/Text/normaltext.dart';

class SelectCard extends StatelessWidget {
   SelectCard({super.key,required this.text});
String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      child: Card(
        color:  Color(0xFF545257),
        //elevation: 10,
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), 
        ),
    
        child: 
  Center(child: NormalText(text: text,color: Colors.white,fontSize: 16,))
           )
          
        );
      
 
  }
}