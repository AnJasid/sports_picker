import 'package:flutter/material.dart';
import 'package:sports_picker/screens/view_screen/sport_list.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 207, 155),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 207, 155),
        title: const Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
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
