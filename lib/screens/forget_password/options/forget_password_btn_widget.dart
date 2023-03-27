
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgetpasswordwidget extends StatelessWidget {
  const forgetpasswordwidget({
    required this.btnIcon,
    required this.subtitle2,
    required this.title2,
    required this.onTap,
    super.key,
  });


  final IconData btnIcon;
  final String title2, subtitle2;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(btnIcon,size: 60,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title2,style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),),
                Text(subtitle2),
              ],
            )
          ],
        ),
      ),
    );
  }
}
