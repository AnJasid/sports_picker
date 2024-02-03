import 'package:flutter/material.dart';
import 'package:sports_picker/model/hobby_model.dart';

class HobbyItem extends StatelessWidget {
  const HobbyItem({
    super.key,
    required this.data,
  });

  final HobbyModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: const Color(0xFFa07cbc),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.hobbyTitle.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Text(
              data.hobbyDesc.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
