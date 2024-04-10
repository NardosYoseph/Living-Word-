import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:living_word/app/view/widget/Text/bigtext.dart';
import 'package:living_word/app/view/widget/Text/normaltext.dart';
import 'package:living_word/app/view/widget/appbar/appbar.dart';
import 'package:living_word/app/view/widget/buttons/dropdown_button.dart';
import 'package:living_word/app/view/widget/cards/infocard.dart';
import 'package:living_word/app/view/widget/cards/selectcard.dart';
import 'package:living_word/app/view/widget/catagory_list.dart';
import 'package:living_word/app/view/widget/event_list.dart';
import 'package:living_word/app/view/widget/find_leaders.dart';
import 'package:living_word/app/view/widget/select_programs.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body:  Column(
        children: [
           SizedBox(height: 10,),
           Row(
            
             children: [
              SizedBox(width: 15,),
               MyDropdownButton(onSelected: (all){}),
               
             ],
           ),
           SizedBox(height: 20,),
EventList()
         

        ],
      )
    );
  }
}