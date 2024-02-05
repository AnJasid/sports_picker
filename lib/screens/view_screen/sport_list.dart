import 'package:flutter/material.dart';
import 'package:sports_picker/data/hobby_data.dart';
import 'package:sports_picker/screens/view_screen/sport_item.dart';

class SportList extends StatelessWidget {
  const SportList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      itemCount: hobbyDetails.length,
      itemBuilder: (BuildContext context, index) => SportItem(
        data: hobbyDetails[index],
      ),
      separatorBuilder: (BuildContext context, index) =>
          const SizedBox(height: 20),
    );
  }
}
