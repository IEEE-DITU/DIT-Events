import 'package:dit_events/custom_widgets/club_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
          Text('DIT EVENTS'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:
        Column(
          children: [
            ClubList(categoryName: 'SPORTS', imageList: ['Assets/photo1.png', 'Assets/photo1.png'],),
            ClubList(categoryName: 'MUSIC', imageList: ['Assets/photo1.png']),
            ClubList(categoryName: 'ARTS', imageList: ['Assets/photo1.png', 'Assets/photo1.png', 'Assets/photo1.png', 'Assets/photo1.png']),
          ],
        )
    );
  }
}