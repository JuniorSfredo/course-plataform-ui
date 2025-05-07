import 'package:course_plataform_ui/common/constants/color_const.dart';
import 'package:course_plataform_ui/pages/splash/sections/splash_animate.dart';
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
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: ColorsConst.lightBackgroundGradient,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Seu futuro começa com uma nova habilidade!',
                            style: GoogleFonts.figtree(
                              height: 1.3,
                              wordSpacing: 1 / 5,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: ColorsConst.darkBackgroundPrimary,
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Aprenda novas habilidades com cursos práticos e interativos, '
                            'em diversas áreas do conhecimento.',
                            style: GoogleFonts.figtree(
                              height: 1.4,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: ColorsConst.darkBackgroundPrimary,
                            ),
                          ),
                          const SizedBox(height: 60),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: ColorsConst.darkBackgroundPrimary,
                                  width: 3,
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 30,
                                child: FaIcon(
                                  FontAwesomeIcons
                                      .arrowRight, // Ícone do Font Awesome
                                  size: 25, // Tamanho do ícone
                                  color:
                                      ColorsConst
                                          .backgroundPrimary, // Cor do ícone
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            SplashAnimate(shrink: _shrink, onLoaded: _animateLoader),
          ],
        ),
      ),
    );
  }
}
