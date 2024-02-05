import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sports_picker/components/bottom_nav_bar.dart';
import 'package:sports_picker/widgets.dart/app_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void _goToHomeScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const BottomNavBar(),
      ),
    );
  }

  void _exit() {
    SystemNavigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/BG.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/slogan.png',
                  width: 320,
                ),
              ),
              const SizedBox(height: 200),
              AppButton(
                onTap: () => _goToHomeScreen(context),
                btnText: 'Get Started',
              ),
              const SizedBox(height: 30),
              AppButton(
                onTap: _exit,
                btnText: 'Exit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
