import 'package:flutter/material.dart';
class button extends StatelessWidget {
  final String txt;
  final VoidCallback? callback;
  const button(this.txt,this.callback);
  @override
  Widget build(BuildContext context) => ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(2, 148, 219, 1)),
      onPressed: () {
        callback!();
      },
      child:  SizedBox(
        width: double.infinity,
        child: Text(txt,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
}