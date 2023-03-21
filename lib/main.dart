import 'package:flutter/material.dart';
import 'package:disigne/screens/basic_designe.dart';
import 'package:disigne/screens/home_screen.dart';
import 'package:disigne/screens/scroll_designe.dart';
import 'package:flutter/services.dart';

//import 'package:disigne/screens/basic_designe.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_designe': (_) => BasicDisigneScreen(),
        'scroll_designe': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}
