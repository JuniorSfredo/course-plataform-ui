import 'package:course_plataform_ui/pages/onboard/onboard_page.dart';
import 'package:course_plataform_ui/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/splash': (context) => const SplashPage(),
        '/onboard': (context) => OnboardingScreen(),
      },
      initialRoute: '/splash',
      debugShowCheckedModeBanner: false,
      title: 'Course Platform',
    );
  }
}
