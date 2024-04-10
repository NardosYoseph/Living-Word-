import 'package:flutter/material.dart';
import 'package:living_word/app/view/widget/Text/normaltext.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {

  const MyAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Standard app bar height

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        
          NormalText(text:"username",fontSize: 18,),
            SizedBox(width: 10),
          CircleAvatar(
            
            backgroundImage:AssetImage("assets/man1.jpg"), // Use your image loading logic
          ),
          
        ],
      ),
      // Rest of your app bar configurations (optional):
      // - actions: Your app bar actions
      // - backgroundColor: Your background color
    );
  }
}
