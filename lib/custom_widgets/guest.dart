import 'package:flutter/material.dart';

class guest extends StatelessWidget {
  final VoidCallback? callback;

  guest(this.callback);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.black, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
        ),
        padding: EdgeInsets.symmetric(vertical: 12.0), // Optional: Add vertical padding
      ),
      onPressed: () {
        if (callback != null) {
          callback!();
        }
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          'Continue as guest',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0, // Optional: Change the font size
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
