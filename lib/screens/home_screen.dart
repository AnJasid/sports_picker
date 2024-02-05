import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:sports_picker/data/hobby_data.dart';
import 'package:sports_picker/model/hobby_model.dart';
import 'package:sports_picker/screens/start_screen.dart';

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
          hobbyDetails[random.nextInt(hobbyDetails.length)].sportTitle;
      newHobby =
          hobbyDetails.firstWhere((hobby) => hobby.sportTitle == newHobbyTitle);
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

  void _goStartScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const StartScreen(),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) {
    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(0, 56, 0, 0),
      items: [
        PopupMenuItem(
          onTap: () => _goStartScreen(),
          value: 'home',
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home),
              SizedBox(width: 6),
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const PopupMenuItem(
          value: 'about',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.info),
              SizedBox(width: 6),
              Text(
                'About',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 207, 155),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 207, 155),
        elevation: 0,
        title: const Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            _showPopupMenu(context);
          },
          icon: const Icon(Icons.menu),
        ),
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(30.0),
        //       bottomRight: Radius.circular(30.0)),
        // ),
      ),
      // drawer: const DrawerScreen(),
      body: Container(
        padding: const EdgeInsets.all(40),
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
          //   opacity: 0.06,d
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 35,
            vertical: 60,
          ),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfff8f4dc),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: const Color.fromARGB(255, 184, 166, 68),
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    currentHobby.sportTitle,
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
                      'Shuffle',
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
      ),
    );
  }
}

Widget _buildPopupMenuButton(BuildContext context) {
  return PopupMenuButton<String>(
    itemBuilder: (context) => [
      const PopupMenuItem(
        value: 'home',
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home),
            SizedBox(width: 6),
            Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      const PopupMenuItem(
        value: 'about',
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home),
            SizedBox(width: 6),
            Text(
              'About',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
