import 'dart:io';
import 'package:flutter/material.dart';
import 'package:living_word/app/view/widget/Text/normaltext.dart';
class CommonCard extends StatelessWidget {
double width;
String url;
   CommonCard({super.key,required this.width,required this.url});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children:[ 
       
         ClipRRect(
            borderRadius: BorderRadius.circular(10),
                   child: Image.asset(url,fit: BoxFit.cover,width: width,height: 250)),
         Container(
          height: 50,
          width: width,
          decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                     color: Color.fromARGB(255, 37, 37, 37).withOpacity(0.7)
                    // gradient: LinearGradient(colors: [Color.fromARGB(255, 37, 37, 37).withOpacity(0.7),const Color.fromARGB(255, 250, 248, 248).withOpacity(0.0)],begin:Alignment.bottomLeft,end: Alignment.center)),
          )
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NormalText(text: "Sunday Worship",color: Colors.white,),
                        NormalText(text: "10:00 AM-11:00 AM",color: Colors.white),
                 
                 ],
                ),
                
      
      
      
              ],
            ),
          ),
          ]),
    );
  }
}