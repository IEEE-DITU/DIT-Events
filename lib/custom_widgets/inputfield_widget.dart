import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class inputfield_widget extends StatelessWidget {
   final bool ispassword;
  final String hintText;
  final Color bgcolor;
  const inputfield_widget(this.hintText,this.ispassword,this.bgcolor);
  @override
  Widget build(BuildContext context) {
    return TextField(
       decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: bgcolor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color.fromRGBO(100, 100, 100, 1),width: 1),
        ),
        hintText: hintText,
        hintStyle:GoogleFonts.inter
         (
           textStyle:const TextStyle
        (
            color: Color.fromRGBO(140, 138, 138,1),
        ),
        ),
      ),
      obscureText: ispassword,
    );
  }
}
//140, 138, 138,1