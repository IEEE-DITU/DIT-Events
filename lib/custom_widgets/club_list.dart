import 'dart:ui';

import 'package:flutter/material.dart';
class ClubList extends StatelessWidget {
  const ClubList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
     // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        Row(
          children: [Title(color: Colors.black, child:Text('TECH')),
          ],
        ),
        Row(
          children: [
            Card(
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              color: Colors.blue,
              child:Padding(
                padding: const EdgeInsets.all(50.0),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              color: Colors.blue,
              child:
              Padding(
                padding: const EdgeInsets.all(50.0),
              ),
            ),

          ],
        ),
        Row(
          children: [
            Title(color: Colors.black, child: Text('SPORTS'))
          ],
        ),
        Row(
          children: [
            Card(
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              color: Colors.grey,
              child:
              Image.network('https://img.freepik.com/free-photo/ultra-detailed-nebula-abstract-wallpaper-4_1562-749.jpg',
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover),
              //Padding(
               // padding: const EdgeInsets.all(50.0),
             // ),
            ),
            Card(
              color: Colors.grey,
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0)),
      Image.network('https://img.freepik.com/free-photo/ultra-detailed-nebula-abstract-wallpaper-4_1562-749.jpg',
    height: 100.0,
      width: 100.0,
      fit: BoxFit.cover,
      ),
    ],
              )
            ),
          ],
        ),


      ],
    );
      Text("HELLo World");
  }
}
