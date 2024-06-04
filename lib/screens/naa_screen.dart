
import 'package:flutter/material.dart';

class Naa_screen extends StatefulWidget {
  const Naa_screen({super.key});
  static const routeName = '/naa-screen';
  @override
  State<Naa_screen> createState() => _naa_screenState();
}

class _naa_screenState extends State<Naa_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                  child: Text("NEWS AND ALERTS")
              ),
            ]


        ),
      ),
    );
  }

}


