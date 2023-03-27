
import 'package:firebase/common_widgets/fade_in_animation/Fade_In_Animation_Model.dart';
import 'package:firebase/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'fade_in_animation.dart';

class FadeInAnimation extends StatelessWidget {
   FadeInAnimation({
    super.key,
    required this.durationInMs,
      this.animate,
     required this.child,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
        right:  controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
        child: AnimatedOpacity(
            duration: Duration(milliseconds: durationInMs),
            opacity: controller.animate.value ? 1:0,
            // child: Image.asset('img/splashscreen.png'))),
    child: child,
    ))
    );
  }
}

