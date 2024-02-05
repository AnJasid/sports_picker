import 'package:flutter/material.dart';
import 'package:sports_picker/screens/view_screen/sport_list.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),

            // image: DecorationImage(
            //   image: AssetImage('assets/images/bg.png'),
            //   opacity: 0.06,
            //   fit: BoxFit.cover,
            // ),
          ),
          child: const SportList()),
    );
  }
}
