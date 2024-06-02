import 'package:flutter/material.dart';
class text_widget extends StatelessWidget {
  final String hintText;
  final double fontsiz;
  final FontWeight fontweight;
  final Color backgroundColor;
  text_widget(this.hintText,this.fontsiz,this.fontweight,this.backgroundColor);
  @override
  Widget build(BuildContext context)
  {
    return  Text(hintText,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize:fontsiz, color:backgroundColor,fontWeight:fontweight),
    );
  }
}
