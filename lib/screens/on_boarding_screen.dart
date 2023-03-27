
import 'package:flutter/material.dart';

import '../constants/sizes.dart';
import '../constants/text_strings.dart';
import '../models/model_on_boarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(DefaultSize),
      color: model.bgcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(model.image,height: size.height * 0.5,),
          Center(child: Text(model.subtitle,
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,120),
            child: Text(model.countertext,style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
