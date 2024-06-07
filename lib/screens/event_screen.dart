import 'package:dit_events/custom_widgets/event_page_cards.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/club_list.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const EventPageCards(
          categoryName: 'UPCOMING EVENTS',
          imageList: [
            'Assets/photo1.png',
            'Assets/photo1.png',
            'Assets/photo1.png',
            'Assets/photo1.png',
            'Assets/photo1.png',
          ],
          eventName: 'Name',
        ),
        const EventPageCards(
          categoryName: 'PAST EVENTS',
          imageList: [
            'Assets/photo1.png',
            'Assets/photo1.png',
            'Assets/photo1.png',
          ],
          eventName: 'Name 2',
        ),
      ],
    );
    Text('This is event screen');
  }
}
