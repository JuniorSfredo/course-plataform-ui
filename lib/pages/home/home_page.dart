import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Iniciar a animação após um pequeno delay
    Future.delayed(const Duration(milliseconds: 300), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6A11CB),
              Color(0xFF2575FC),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 1),
              _buildContent(),
              const Spacer(flex: 2),
              _buildStartButton(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Text(
            'Academia Digital',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ).animate(controller: _controller).fadeIn(
            duration: 600.ms,
            delay: 300.ms,
          ).slideY(
              begin: 0.3,
              end: 0,
              duration: 600.ms,
              delay: 300.ms,
              curve: Curves.easeOutQuad
          ),
          const SizedBox(height: 16),
          Text(
            'Sua jornada na programação começa aqui. Aprenda, pratique e evolua com os melhores cursos de programação!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withOpacity(0.9),
              height: 1.5,
            ),
          ).animate(controller: _controller).fadeIn(
            duration: 600.ms,
            delay: 500.ms,
          ).slideY(
              begin: 0.3,
              end: 0,
              duration: 600.ms,
              delay: 500.ms,
              curve: Curves.easeOutQuad
          ),
          const SizedBox(height: 30),
          _buildFeatures(),
        ],
      ),
    );
  }

  Widget _buildFeatures() {
    final features = [
      {'icon': Icons.laptop, 'text': 'Cursos em diversas linguagens'},
      {'icon': Icons.access_time, 'text': 'Aprenda no seu ritmo'},
      {'icon': Icons.workspace_premium, 'text': 'Certificados reconhecidos'},
    ];

    return Column(
      children: List.generate(
        features.length,
            (index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  features[index]['icon'] as IconData,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  features[index]['text'] as String,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ).animate(controller: _controller).fadeIn(
            duration: 400.ms,
            delay: Duration(milliseconds: 700 + (index * 150)),
          ).slideX(
              begin: 0.3,
              end: 0,
              duration: 500.ms,
              delay: Duration(milliseconds: 700 + (index * 150)),
              curve: Curves.easeOutQuad
          ),
        ),
      ),
    );
  }

  Widget _buildStartButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: () {
          // Navegação para a próxima tela (login ou home)
          // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Color(0xFF6A11CB),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 5,
          shadowColor: Colors.black.withOpacity(0.3),
        ),
        child: Container(
          width: double.infinity,
          child: Center(
            child: Text(
              'COMEÇAR AGORA',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ).animate(controller: _controller).scale(
        begin: const Offset(0.9, 0.9),
        end: const Offset(1.0, 1.0),
        duration: 600.ms,
        delay: 900.ms,
        curve: Curves.easeOutQuint,
      ).shimmer(
        duration: 1200.ms,
        delay: 1200.ms,
        color: Colors.white.withOpacity(0.8),
      ),
    );
  }
}