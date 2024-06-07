import 'package:dit_events/screens/event_screen.dart';
import 'package:dit_events/screens/naa_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EventScreen(),
    );
  }
}
