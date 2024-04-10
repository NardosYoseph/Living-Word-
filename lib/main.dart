import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:living_word/app/controllers/bottomNav_controller/bottomNav_controller.dart';
import 'package:living_word/app/view/pages/homepage.dart';
import 'package:living_word/app/view/widget/bottombar/bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  BottomNavController bottomNavController = Get.put(BottomNavController());
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      body:    Obx(() {
                return  bottomNavController.widgetOptions.elementAt(bottomNavController.selectedIndex.value);}),
      bottomNavigationBar: MyBottomNavigationBar()
      );  }
}
