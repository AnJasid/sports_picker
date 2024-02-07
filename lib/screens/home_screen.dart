import 'package:flutter/material.dart';
import 'package:sports_picker/data/sport_data.dart';
import 'package:sports_picker/model/Sport_model.dart';
import 'dart:async';
import 'dart:math';
import 'package:sports_picker/widgets.dart/app_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SportModel currentHobby = const SportModel(
      sportTitle: 'Press Shuffle', sportDesc: '', sportImage: '');
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
    SportModel newHobby;
    do {
      newHobbyTitle =
          sportDetails[random.nextInt(sportDetails.length)].sportTitle;
      newHobby =
          sportDetails.firstWhere((hobby) => hobby.sportTitle == newHobbyTitle);
    } while (newHobbyTitle == currentHobby.sportTitle);

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
    return Container(
      padding: const EdgeInsets.all(40),
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xfffefae0),
            Color(0xffbc6c25),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            const Text(
              'Sports Picker',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(20),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xfffefae0),
                    Color(0xff606c38),
                  ],
                ),
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xff28341c),
                ),
                child: Center(
                  child: Text(
                    currentHobby.sportTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(flex: 2),
            AppButton(
              onTap: () {
                if (!isShuffling) {
                  startShuffle();
                }
              },
              btnText: 'Shuffle',
            ),
          ],
        ),
      ),
    );
  }
}
