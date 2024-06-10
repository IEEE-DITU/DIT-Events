import 'package:dit_events/screens/naa_screen.dart';
import 'package:dit_events/screens/splash_screen.dart';
import 'package:dit_events/utils/widget_extension.dart';
import 'package:dit_events/screens/sidepanel_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SidePanel_Screen(),
    );
  }
}


