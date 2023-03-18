import 'dart:ffi';

import 'package:disigne/screens/basic_designe.dart';
import 'package:flutter/material.dart';
//import 'package:disigne/screens/basic_designe.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic_designe',
      routes: {
        'basic_designe':(_) => BasicDisigneScreen()
      },
    );
  }
}

