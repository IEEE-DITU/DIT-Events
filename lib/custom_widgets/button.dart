import 'package:flutter/material.dart';
class LoginBtn extends StatelessWidget {
  final VoidCallback? callback;
  const LoginBtn(this.callback);
  @override
  Widget build(BuildContext context) => ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(2, 148, 219, 1)),
      onPressed: () {
        callback!();
      },
      child: const SizedBox(
        width: double.infinity,
        child: Text('Login',
          style: TextStyle(fontFamily: 'Inter',fontSize: 20,
              color: Color.fromRGBO(0, 0, 0, 1),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
}