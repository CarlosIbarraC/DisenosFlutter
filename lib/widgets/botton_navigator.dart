import 'package:flutter/material.dart';

class BottonNavigetor extends StatelessWidget {
  const BottonNavigetor({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor:Color.fromRGBO(236, 98, 188, 1),
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 1,
      items: [
      BottomNavigationBarItem(
        
        icon:Icon(Icons.send_to_mobile), 
        label: 'hola '),
         BottomNavigationBarItem(
        icon:Icon(Icons.stacked_bar_chart), 
        label: 'hola ',
        ),
         BottomNavigationBarItem(
        icon:Icon(Icons.battery_0_bar_sharp), 
        label: 'hola ',
        )
         
      ]);
  }
}
