import 'package:flutter/material.dart';
import 'package:sports_picker/data/sport_data.dart';
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
      itemCount: sportDetails.length,
      itemBuilder: (BuildContext context, index) => SportItem(
        data: sportDetails[index],
      ),
      separatorBuilder: (BuildContext context, index) =>
          const SizedBox(height: 20),
    );
  }
}
