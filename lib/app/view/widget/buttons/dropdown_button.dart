import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDropdownButton extends StatefulWidget {
  final Function(String) onSelected;

  const MyDropdownButton({super.key, required this.onSelected});

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String _selectedValue = 'All'; // Initial selected value

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 40,
      width: 140,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),  color: Color.fromARGB(255, 75, 74, 75),),
   
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(10),
      
        value: _selectedValue,
     icon: SizedBox.shrink(),
        elevation: 26,
         underline: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             DropdownButtonHideUnderline(child: Icon(Icons.arrow_drop_down,size: 30,color: Colors.white,)),
           ],
         ),
         dropdownColor: Colors.black,
        style: const TextStyle(color: Colors.white,fontSize: 16), 
        onChanged: (String? newValue) {
          setState(() {
            _selectedValue = newValue!;
            widget.onSelected(newValue); 
          });
        },
        items: <String>['All', 'Worship', 'Prayer', 'Word']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
