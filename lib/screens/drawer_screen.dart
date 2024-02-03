import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Color(0xff206464)),
            child: Row(
              children: [
                // Icon(
                //   Icons.home,
                //   size: 48,
                //   color: Colors.black,
                // ),
                // SizedBox(width: 18),
                // Text(
                //   '',
                // ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              size: 25,
            ),
            title: const Text(
              'HOME',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.info,
              size: 25,
            ),
            title: const Text(
              'ABOUT',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
