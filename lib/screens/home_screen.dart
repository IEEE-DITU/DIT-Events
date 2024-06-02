import 'package:dit_events/custom_widgets/club_list.dart';
import 'package:dit_events/custom_widgets/event_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: Text('FEATURED',style:GoogleFonts.inriaSerif(fontWeight:FontWeight.w400,fontSize:25),),
              ),
              GestureDetector( onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 80, 30),
                  child: Image.asset('Assets/photo1.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: Text('UPCOMING EVENTS',style:GoogleFonts.inriaSerif(fontWeight:FontWeight.w400,fontSize:25),),
              ),
              SizedBox(height: 250,child: EventList()),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: Text('CLUBS & SOCIETIES',style:GoogleFonts.inriaSerif(fontWeight:FontWeight.w400,fontSize:25),),
              ),
              ClubList(categoryName: 'SPORTS', imageList: ['Assets/photo1.png', 'Assets/photo2.jpg','Assets/photos7.jpg'],),
              ClubList(categoryName: 'MUSIC', imageList: ['Assets/download.jpeg','Assets/photo1.png','Assets/photo2.jpg','Assets/photos6.png','Assets/download.jpeg',]),
              ClubList(categoryName: 'ARTS', imageList: ['Assets/photos5.jpg','Assets/photo1.png', 'Assets/photos6.png','Assets/photos7.jpg']),
            ],
          ),
        )
    );
  }
}