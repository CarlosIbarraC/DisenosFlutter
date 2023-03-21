//import 'package:disigne/screens/scroll_designe.dart';
import 'package:disigne/widgets/card_table.dart';
import 'package:disigne/widgets/fondo.dart';
import 'package:disigne/widgets/page_title.dart';
import 'package:flutter/material.dart';
import '../widgets/botton_navigator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        Fondo(), 
      _HomeBody()
      
      ],
    ),
    bottomNavigationBar: BottonNavigetor(),
    );
    
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),

          //Card Table
          CardTable()

        ],
      ),
    );
  }
}
