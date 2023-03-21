import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
            Color(0xff7eebcb),
            Color(0xff50c2dd)
          ])
        ),
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
         
            Page1(),
            Page2()
            
      
          ],       
        ),
      )
      
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        MainContent(),
       
        
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  
  Widget build(BuildContext context) {
    
    return SafeArea(
      bottom: false,
      child: Column(     
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
       
        children: [
          SizedBox(
            height: 30,
          ),
          Text('12°',
          style: GoogleFonts.roboto(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),
          ),
           Text('Miercoles',
           style: GoogleFonts.montserrat(
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: Colors.white
            )
           ),
           Expanded(child: Container(
            
           )),
            Icon(Icons.keyboard_arrow_down,
            size: 64,
            color: Colors.white,
            )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: double.infinity,
      color: Color(0xff51c2dd),
      child: Image(
        image: AssetImage('assets/scroll-1.png')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xff51c2dd),
      child: Center(
        child: TextButton(         
        onPressed: () {},
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
          child: Text('Bienvenido',
          style:GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w400
          ),
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xff367ecc),
          //shadowColor: Color(0xff000000)
        ),
          
        ),
        
      ),
    );
  }
}