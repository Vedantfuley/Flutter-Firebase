import 'package:flutter/cupertino.dart';

import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image(image: AssetImage(Welcome), height: size.height * 0.2)),
        SizedBox(height: 20,),
        Center(child: Text('Login', style: TextStyle(fontSize: 50,fontFamily: 'Great_Vibes'))),

      ],
    );
  }
}
