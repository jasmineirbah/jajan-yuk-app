import 'package:flutter/material.dart';
import 'package:jajan_yuk_app/ui/login_page.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF4A3A),
              Color(0xFFFF6A3D),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// LOGO
              Padding(
                padding: const EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 30,
                  ),
                ),
              ),

              /// TEXT
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Food for\nEveryone",
                  style: TextStyle(
                    fontSize: 42, // sedikit dibesarin biar lebih impactful
                    fontWeight: FontWeight.w900, // SUPER TEBAL
                    color: Colors.white,
                    height: 1.1,
                    letterSpacing: 0.5, // biar lebih elegan
                  ),
                ),
              ),

              const Spacer(),

              /// HUMAN IMAGE
              Center(
                child: Image.asset(
                  "assets/images/human.png", // <-- ini yang kamu bilang
                  height: 250,
                ),
              ),

              const Spacer(),

              /// BUTTON
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFFFF4A3A),
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Text(
                    "Get started",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}