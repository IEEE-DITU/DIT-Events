import 'package:flutter/material.dart';
class loginbtn extends StatelessWidget {
  final VoidCallback? callback;
  loginbtn(this.callback);
  @override
  Widget build(BuildContext context) => ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(2, 148, 219, 1)),
      onPressed: () {
        callback!();
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text('Login',
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
          textAlign: TextAlign.center,
        ),
      ),
    );


}