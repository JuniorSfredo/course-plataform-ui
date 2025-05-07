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
        color: const Color.fromARGB(255, 26, 26, 70),
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
