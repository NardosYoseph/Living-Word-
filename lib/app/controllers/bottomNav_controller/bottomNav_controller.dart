import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:living_word/app/view/pages/eventspage.dart';
import 'package:living_word/app/view/pages/homepage.dart';
// import 'package:living_word/app/view/event/pages/home_page.dart';
// import 'package:living_word/app/view/event/pages/my_event_page.dart';
class BottomNavController extends GetxController{
RxInt  selectedIndex = 0.obs;

  List<Widget> widgetOptions = <Widget>[
    HomePage(),
    // MyEventPge(),
    EventsPage(),
    HomePage(),
  ];

  void onItemTapped(int index) {
      selectedIndex.value = index;
  }
}