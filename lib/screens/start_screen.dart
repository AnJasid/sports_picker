import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sports_picker/components/bottom_nav_bar.dart';

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
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff654ea3),
            Color(0xffeaafc8),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => _goToHomeScreen(context),
              child: const Text(
                'Let\'s Go!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: _exit,
              child: const Text(
                'Exit',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () => _goToHomeScreen(context),
            //   child: const Text('Start'),
            // ),
          ],
        ),
      ),
    );
  }
}
