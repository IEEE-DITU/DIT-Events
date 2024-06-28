import 'package:flutter/material.dart';
class divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        DividerWidget(),
        SphereContainer(),
      ],
    );
  }
}
class SphereContainer extends StatelessWidget {
  final String or='OR';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 1),
        shape:  BoxShape.circle,
      ),
      child: Center(
        child:  Text(
           or,
          style:  const TextStyle(
            color: Color.fromRGBO(140, 138, 138, 1),
            fontSize: 12.0,  // Adjust font size to fit in the smaller container
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.0,
      width: 357.0, // Adjust the width as needed
      color: const Color.fromRGBO(217, 217, 217, 1),
    );
  }
}