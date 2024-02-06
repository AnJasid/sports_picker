import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xfffefae0),
            Color(0xff283618),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'About',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff283618),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfffefae0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  '10Circ - Sport Opt Picker is a mobile application designed to present a comprehensive catalogue of information regarding various popular sports in India. Additionally, this application boasts a distinctive feature aimed at facilitating users in selecting a sport suited to their interests, providing opportunities for leisure and potential hobby pursuits. The current iteration of the app is version 1.0.0.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
