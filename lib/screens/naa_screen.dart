import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class NaaScreen extends StatefulWidget {
  const NaaScreen({super.key});
  static const routeName = '/naa-screen';
  @override
  State<NaaScreen> createState() => _NaaScreenState();
}

class _NaaScreenState extends State<NaaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      Padding(
        padding: EdgeInsets.only(top: 70),
        child: Text('NEWS & ALERTS',
            style: GoogleFonts.inter(
                fontSize: 32, fontWeight: FontWeight.w500)),
      ),
      Padding(
        padding: EdgeInsets.only(top: 2,left: 320),
        child: Container(
            height: 30,
            width: 43,
            decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Icon(Icons.filter_list, color: Colors.grey[700], size: 28.0)),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 100,
              child: Row(children: [
                SizedBox(
                    height: 15,
                    width: 45,
                    child: Image(image: AssetImage('Assets/Ellipse 157.png'))),
                SizedBox(width: 1),
                Column(children: [
                  Padding(
                      padding: EdgeInsets.only(top: 33, bottom:7),
                      child: Text('date',
                          style: GoogleFonts.inriaSerif(
                              fontSize: 25, fontWeight: FontWeight.w400))),
                  Text('ABOUT',
                      style: GoogleFonts.inriaSerif(
                          fontSize: 18, fontWeight: FontWeight.w400))
                ])
              ]),
            ),
            SizedBox(
              height: 100,
              child: Row(children: [
                SizedBox(
                    height: 15,
                    width: 45,
                    child: Image(image: AssetImage('Assets/Ellipse 157.png'))),
                SizedBox(width: 1),
                Column(children: [
                  Padding(
                      padding: EdgeInsets.only(top: 33, bottom:7),
                      child: Text('date',
                          style: GoogleFonts.inriaSerif(
                              fontSize: 25, fontWeight: FontWeight.w400))),
                  Text('ABOUT',
                      style: GoogleFonts.inriaSerif(
                          fontSize: 18, fontWeight: FontWeight.w400))
                ])
              ]),
            ),
            SizedBox(
              height: 100,
              child: Row(children: [
                SizedBox(
                    height: 15,
                    width: 45,
                    child: Image(image: AssetImage('Assets/Ellipse 157.png'))),
                SizedBox(width: 1),
                Column(children: [
                  Padding(
                      padding: EdgeInsets.only(top: 33, bottom:7),
                      child: Text('date',
                          style: GoogleFonts.inriaSerif(
                              fontSize: 25, fontWeight: FontWeight.w400))),
                  Text('ABOUT',
                      style: GoogleFonts.inriaSerif(
                          fontSize: 18, fontWeight: FontWeight.w400))
                ])
              ]),
            ),




          ],
        ),
      ),
        ],
      ),
    );
  }
}
