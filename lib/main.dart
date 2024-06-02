import 'package:dit_events/custom_widgets/event_card.dart';
import 'package:dit_events/custom_widgets/event_list.dart';
import 'package:dit_events/screens/splash_screen.dart';
import 'package:dit_events/utils/widget_extension.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Card with Image'),
        ),
        body:EventList()
      ),
    );
  }
}



