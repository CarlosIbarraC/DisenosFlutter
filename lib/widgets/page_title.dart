import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        child: Padding(
         
          padding:EdgeInsets.all(16),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Classify transaction',
              style: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),),
            SizedBox(
              height: 15,
            ),
              Container(
                width: 220,
                child: Text('Classify this transaction into a particula category',
                style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,              
                          ),
                          maxLines: 2,
                        
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}