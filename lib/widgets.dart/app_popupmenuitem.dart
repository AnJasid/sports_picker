import 'package:flutter/material.dart';

class AppPopUpMenuItem extends StatelessWidget {
  const AppPopUpMenuItem({
    super.key,
    required this.onTap,
    required this.value,
    required this.iconData,
    required this.btnName,
  });

  final void Function() onTap;
  final String value;
  final IconData iconData;
  final String btnName;

  @override
  Widget build(BuildContext context) {
    return PopupMenuItem(
      onTap: () => onTap,
      value: value,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.home),
          const SizedBox(width: 6),
          Text(
            btnName,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
