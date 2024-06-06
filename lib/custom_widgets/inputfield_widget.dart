import 'package:flutter/material.dart';
class inputfield_widget extends StatelessWidget {
   final bool ispassword;
  final String hintText;
  final Color bgcolor;
  const inputfield_widget(this.hintText,this.ispassword,this.bgcolor);
  @override
  Widget build(BuildContext context) {
    return TextField(
      // style: const TextStyle(color:Color.fromRGBO(0, 0, 0, 1)),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: bgcolor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color.fromRGBO(140, 138, 138,1),width: 1),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
            fontFamily: 'Inter',
            color: Color.fromRGBO(140, 138, 138,1),
        ),
      ),
      obscureText: ispassword,
    );
  }
}
//140, 138, 138,1