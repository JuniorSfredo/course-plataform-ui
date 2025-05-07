import 'package:course_plataform_ui/common/constants/color_const.dart';
import 'package:course_plataform_ui/common/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashBottom extends StatefulWidget {
  const SplashBottom({super.key});

  @override
  State<SplashBottom> createState() => SplashBottomState();
}

class SplashBottomState extends State<SplashBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: CircleButton(
                borderColor: ColorsConst.darkBackgroundPrimary,
                radius: 30,
                child: FaIcon(
                  FontAwesomeIcons.arrowRight, // Ícone do Font Awesome
                  size: 25, // Tamanho do ícone
                  color: ColorsConst.backgroundPrimary, // Cor do ícone
                ),
                onPressed: () => Navigator.pushNamed(context, '/home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
