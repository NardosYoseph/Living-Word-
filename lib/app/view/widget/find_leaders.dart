import 'package:flutter/material.dart';
import 'package:living_word/app/view/widget/Text/normaltext.dart';

class FindLeaders extends StatelessWidget {
  const FindLeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
           height: 100,
      child: Row(
        children: [
          TextButton(onPressed: (){}, child: NormalText(text:"Find leaders",fontSize: 16,)),
           SizedBox(
            width: 5)
          ,Icon(Icons.arrow_forward),
              SizedBox(
            width: 5),
          SizedBox(
            height: 100,
            width: 230,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                   CircleAvatar(
              backgroundImage:AssetImage("assets/lwpastor.jpg"),
            ),
                SizedBox(
            width: 5),
                  CircleAvatar(
              backgroundImage:AssetImage("assets/man4.jpg"),
            ),    
                SizedBox(
            width: 5),  CircleAvatar(
              backgroundImage:AssetImage("assets/man2.jpg"),
            ),    
                SizedBox(
            width: 5),  CircleAvatar(
              backgroundImage:AssetImage("assets/man3.jpg"),
            ),  
                SizedBox(
            width: 5),    CircleAvatar(
              backgroundImage:AssetImage("assets/man4.jpg"),
            ),
             SizedBox(
            width: 5),
                  CircleAvatar(
              backgroundImage:AssetImage("assets/man4.jpg"),)
                ]),
          )
        ],
      ),
    );
  }
}