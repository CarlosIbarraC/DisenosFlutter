import 'dart:math';
import 'package:flutter/material.dart';


class Fondo extends StatelessWidget {
  const Fondo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.26,0.8],
          colors: [
             Color(0xff2E305F),
            Color(0xff202333),            
          ])
      );
    return Stack(
      children: [
        //suported gradient purple
        Container(
        decoration:boxDecoration ,    
      ),
       Positioned(
        top: -100,
        left: -30,
        child: const _PinkBox())
      ]
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle:-pi / 0.8,
      child: Container(
        decoration: BoxDecoration(
        color:Colors.pink,
        borderRadius: BorderRadius.circular(80),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(236, 98, 188, 1),
            Color.fromARGB(239, 255, 145, 246)
          ])
        ),
        width: 360,
        height: 360,
       
      ),
    );
  }
}
