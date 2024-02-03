import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:sports_picker/data/hobby_data.dart';
import 'package:sports_picker/model/hobby_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HobbyModel currentHobby =
      const HobbyModel(hobbyTitle: 'Press Reshuffle', hobbyDesc: 'decription');
  bool isShuffling = false;
  Timer? shuffleTimer;

  void startShuffle() {
    isShuffling = true;
    shuffleHobby();
    shuffleTimer = Timer(const Duration(seconds: 3), stopShuffle);
  }

  void stopShuffle() {
    isShuffling = false;
    shuffleTimer?.cancel();
  }

  // Updated shuffleHobby() method
  void shuffleHobby() {
    final random = Random();
    String newHobbyTitle;
    HobbyModel newHobby;
    do {
      newHobbyTitle =
          hobbyDetails[random.nextInt(hobbyDetails.length)].hobbyTitle;
      newHobby =
          hobbyDetails.firstWhere((hobby) => hobby.hobbyTitle == newHobbyTitle);
    } while (newHobbyTitle == currentHobby.hobbyTitle);

    setState(() {
      currentHobby = newHobby.copyWith(hobbyDesc: '');
    });
    if (isShuffling) {
      shuffleTimer = Timer(const Duration(milliseconds: 100),
          shuffleHobby); // Adjust the duration here
    }
  }

  @override
  void dispose() {
    shuffleTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: const Color.fromARGB(255, 236, 226, 187),
        title: const Text(
          'Home Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(30.0),
        //       bottomRight: Radius.circular(30.0)),
        // ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          // image: DecorationImage(
          //   image: AssetImage('assets/images/bg.png'),
          //   opacity: 0.06,d
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 30,
          ),
          child: Column(
            children: [
              const Spacer(flex: 1),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfff8f4dc),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    currentHobby.hobbyTitle,
                    style: const TextStyle(fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const Spacer(flex: 2),
              GestureDetector(
                onTap: () {
                  if (!isShuffling) {
                    startShuffle();
                  }
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFa07cbc),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Center(
                    child: Text(
                      'Reshuffle',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // child: Center(
        //   child: Padding(
        //     padding: const EdgeInsets.all(30),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         const SizedBox(height: 170),
        //         Text(
        //           currentHobby.hobbyTitle,
        //           style: const TextStyle(fontSize: 24.0),
        //           textAlign: TextAlign.center,
        //         ),
        //         const SizedBox(height: 50),
        //         Text(currentHobby.hobbyDesc),
        //         const Spacer(),
        //         SizedBox(
        //           width: double.infinity,
        //           child: ElevatedButton(
        //             style: ElevatedButton.styleFrom(
        //               backgroundColor: const Color(0xFF28b4cc),
        //             ),
        //             onPressed: () {
        //               if (!isShuffling) {
        //                 startShuffle();
        //               }
        //             },
        //             child: const Text('Reshuffle'),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
