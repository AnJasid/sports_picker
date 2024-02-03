import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToHomeScreen(context),
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
