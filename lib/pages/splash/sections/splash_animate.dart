import 'package:course_plataform_ui/common/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashAnimate extends StatelessWidget {
  final bool shrink;
  final Function(LottieComposition) onLoaded;

  const SplashAnimate({
    super.key,
    required this.shrink,
    required this.onLoaded,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      height: shrink ? height * 0.5 : height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsConst.darkBackgroundPrimary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(shrink ? 30 : 0),
          bottomRight: Radius.circular(shrink ? 30 : 0),
        ),
      ),
      child: Center(
        child: LottieBuilder.asset(
          'assets/animates/splash.json',
          repeat: false,
          animate: true,
          onLoaded: onLoaded,
        ),
      ),
    );
  }
}
