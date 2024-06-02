import 'package:flutter/material.dart';
class divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        DividerWidget(
        ),
        SphereContainer(),
      ],
    );
  }
}
class SphereContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          'OR',
          style: TextStyle(
            color: Colors.white,
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
      width: 200.0, // Adjust the width as needed
      color: Colors.grey,

    );
  }
}