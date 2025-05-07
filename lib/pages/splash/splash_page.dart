import 'package:course_plataform_ui/common/constants/color_const.dart';
import 'package:course_plataform_ui/pages/splash/sections/splash_animate.dart';
import 'package:course_plataform_ui/pages/splash/sections/splash_bottom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _shrink = false;
  late Duration _animationDuration = const Duration(milliseconds: 1000);

  @override
  void initState() {
    super.initState();
  }

  void _animateLoader(LottieComposition composition) {
    _animationDuration = composition.duration;
    Future.delayed(_animationDuration, () => setState(() => _shrink = true));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            if (_shrink)
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: height * 0.45,
                  width: double.infinity,
                  child: SplashBottom(),
                ),
              ),
            SplashAnimate(shrink: _shrink, onLoaded: _animateLoader),
          ],
        ),
      ),
    );
  }
}
