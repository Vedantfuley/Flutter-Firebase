import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appname'),
        centerTitle: true,
    ),
    body: Column(children:[
      Text('You have Successfully Logged In!!!',style: GoogleFonts.montserrat(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),textAlign: TextAlign.center,),
      Image.asset('img/4212138-removebg-preview.png')
    ],
    ),

    );
  }
}
