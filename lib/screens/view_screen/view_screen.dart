import 'package:flutter/material.dart';
import 'package:sports_picker/screens/view_screen/hobby_list.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 236, 226, 187),
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
          decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage('assets/images/bg.png'),
              //   opacity: 0.06,
              //   fit: BoxFit.cover,
              // ),
              ),
          child: const HobbyList()),
    );
  }
}
