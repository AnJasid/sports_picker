import 'package:flutter/material.dart';
import 'package:sports_picker/screens/view_screen/sport_list.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xfffefae0),
            Color(0xff606c38),
          ],
        ),
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Text(
              'Popular Sports in India',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 500,
              child: const SportList(),
            ),
          ],
        ),
      ),
    );
  }
}
