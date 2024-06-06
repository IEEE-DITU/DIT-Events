import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});
  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Text('NEWS & ALERTS',
                style: GoogleFonts.inter(
                    fontSize: 35, fontWeight: FontWeight.w400)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 340),
            child: Icon(Icons.filter_list, color: Colors.grey, size: 20.0),
          ),
          Row(children: [
            const SizedBox(
                height: 17,
                width: 60,
                child: Image(image: AssetImage('Assets/Ellipse 157.png'))),
            const SizedBox(width: 10),
            Column(children: [
              Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Text('date',
                      style: GoogleFonts.inriaSerif(
                          fontSize: 30, fontWeight: FontWeight.w400))),
              Text('ABOUT',
                  style: GoogleFonts.inriaSerif(
                      fontSize: 20, fontWeight: FontWeight.w400))
            ])
          ]),
        ],
      )),
    );
  }
}
