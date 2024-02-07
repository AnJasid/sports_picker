import 'package:flutter/material.dart';

import 'package:sports_picker/screens/start_screen.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  OneSignal.initialize("174b755e-9043-449f-975c-5e7a643898f6");
  OneSignal.Notifications.requestPermission(true);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const SportPicker());
}

class SportPicker extends StatelessWidget {
  const SportPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '10Circ - Sport Opt Picker',
      home: StartScreen(),
    );
  }
}
