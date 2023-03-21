import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.account_balance,
            color: Colors.blue,
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.ads_click_outlined,
            color: Color.fromARGB(255, 163, 101, 235),
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shop_2_sharp,
            color: Color.fromARGB(255, 238, 105, 187),
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.car_rental,
            color: Color.fromARGB(255, 243, 210, 99),
            text: 'Transport',
          )
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.badge_outlined,
            color: Color.fromARGB(255, 107, 131, 236),
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.send,
            color: Color.fromARGB(255, 165, 243, 113),
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.badge_outlined,
            color: Color.fromARGB(255, 107, 131, 236),
            text: 'General',
          ),
          _SingleCard(
            icon: Icons.send,
            color: Color.fromARGB(255, 165, 243, 113),
            text: 'Transport',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {required this.icon, required this.color, required this.text});
  final IconData icon;
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
   
    return _CardBackground(child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(text,
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue))
              ],
            ))
    
     ;
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
