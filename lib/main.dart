import 'package:dit_events/screens/splash_screen.dart';
import 'package:dit_events/utils/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:dit_events/screens/login_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_screen(),
    );
  }
}


