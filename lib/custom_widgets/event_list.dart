import 'package:flutter/material.dart';

import 'event_card.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: const [
        EventCard(
          eventName: 'fristevent',
          date: '12/5/24',
          organisedBy: 'students',
        ),
        EventCard(
          eventName: 'fristevent',
          date: '12/5/24',
          organisedBy: 'students',
        ),
        EventCard(
          eventName: 'fristevent',
          date: '12/5/24',
          organisedBy: 'students',
        )
      ],
    );
  }
}
