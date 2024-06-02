import 'package:flutter/material.dart';
class inputfield_widget extends StatelessWidget {

  final String hintText;
  inputfield_widget(this.hintText);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color:  Color.fromRGBO(0, 0, 0, 1)),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: Color.fromRGBO(217, 217, 217, 1),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
      ),
    );
  }
}
