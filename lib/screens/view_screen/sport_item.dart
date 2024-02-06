import 'package:flutter/material.dart';
import 'package:sports_picker/model/Sport_model.dart';

class SportItem extends StatelessWidget {
  const SportItem({
    super.key,
    required this.data,
  });

  final SportModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xfffefae0),
            Color(0xffdda15e),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 280,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5.0,
                  color: const Color(0xffc06c24),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  data.sportImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            data.sportTitle.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            data.sportDesc.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

    // Container(
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     border: Border.all(
    //       color: const Color(0xFFa07cbc),
    //       width: 2.0,
    //     ),
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.all(15.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Center(
    //           child: Container(
    //             width: 280,
    //             height: 150,
    //             // decoration: BoxDecoration(
    //             //   color: Colors.grey[500],
    //             // ),
    //             child: Image.asset(data.sportImage),
    //           ),
    //         ),
    // const SizedBox(height: 20),
    // Text(
    //   data.sportTitle.toString(),
    //   style: const TextStyle(fontWeight: FontWeight.bold),
    // ),
    // const SizedBox(height: 10),
    // Text(
    //   data.sportDesc.toString(),
    //   style: const TextStyle(fontWeight: FontWeight.bold),
    // ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
