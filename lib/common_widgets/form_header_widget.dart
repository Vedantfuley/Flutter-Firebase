import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';

class FormHeaderWidget extends StatelessWidget {
   FormHeaderWidget({
    super.key,
     this.imageColor,
     this.heightBetween,
     required this.image1,
     required this.title1,
     required this.subtitle1,
     this.imageHeight = 0.2,
     this.crossAxisAlignment = CrossAxisAlignment.start,
  });
   final Color? imageColor;
   final double imageHeight;
   final double? heightBetween;
  final String image1,title1,subtitle1;
  final CrossAxisAlignment crossAxisAlignment;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image(image: AssetImage(image1), height: size.height * 0.2)),
        SizedBox(height: 20,),
        Center(child: Text(title1, textAlign: TextAlign.center,style: GoogleFonts.montserrat(fontSize: 20,fontWeight: FontWeight.bold))),
        Center(child: Text(subtitle1,textAlign: TextAlign.center,),
        )],
    );
  }
}
