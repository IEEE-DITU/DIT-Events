import 'package:flutter/material.dart';
class Guest extends StatelessWidget {
  final String gmess='Continue as a Guest';
  final VoidCallback? callback;
  const Guest(this.callback);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const  BorderSide(color: Color.fromRGBO(140, 138, 138, 1), width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Optional: Add rounded corners
        ),
        padding: const EdgeInsets.symmetric(vertical: 12.0), // Optional: Add vertical padding
      ),
      onPressed: () {
        if (callback != null) {
          callback!();
        }
      },
      child:  SizedBox(
        width: double.infinity,
        child: Text(gmess,
          style: const TextStyle(
            fontFamily: 'Inter',
            color: Color.fromRGBO(26, 26, 26, 1),
            fontSize: 17.0, // Optional: Change the font size
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
