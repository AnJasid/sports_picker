import 'package:flutter/material.dart';
import 'package:sports_picker/screens/view_screen/sport_list.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/viewBG.png'), fit: BoxFit.cover),
        ),
        child: const SportList(),
      ),
    );
  }
}
