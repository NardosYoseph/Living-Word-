import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:living_word/app/controllers/bottomNav_controller/bottomNav_controller.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final BottomNavController bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(color: Colors.white),
  // unselectedLabelStyle: TextStyle(color: Colors.white),
      backgroundColor: const Color(0xFF821877),
      items: <BottomNavigationBarItem>[
        
        BottomNavigationBarItem(
          icon: Icon(Icons.home,),
          label: 'Home',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: bottomNavController.selectedIndex.value,
      onTap: bottomNavController.onItemTapped,
    ));
  }
}


