import 'package:dit_events/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCard extends StatelessWidget {
  const EventCard(
      {super.key,
      required this.eventName,
      required this.date,
      required this.organisedBy});
  final String eventName;
  final String date;
  final String organisedBy;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          margin: const EdgeInsets.all(15.0),
          color: CustomColors.eventListColor,
          height: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                'https://images.pexels.com/photos/2166711/pexels-photo-2166711.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text(
                eventName,
                style: GoogleFonts.inriaSerif(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
              Text(
                organisedBy,
                style: GoogleFonts.inriaSerif(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
              Text(
                date,
                style: GoogleFonts.inriaSerif(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
