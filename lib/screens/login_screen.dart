import 'package:dit_events/custom_widgets/divider.dart';
import 'package:dit_events/custom_widgets/guest.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/inputfield_widget.dart';
import '../custom_widgets/loginbtn.dart';
import '../custom_widgets/text_widget.dart';
import '../custom_widgets/guest.dart';
class Login_screen extends StatefulWidget {
  const Login_screen({super.key});
  static const routeName = '/login-screen';
  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:  Center(

        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              _logo(),
              const SizedBox(height: 10),
              text_widget("Welcome to Dit University", 20, FontWeight.w400,const Color.fromRGBO(0, 0, 0, 1)),
              const SizedBox(height: 10),
              Container(

                margin: const EdgeInsets.only(left: 32,right: 32),
                child :inputfield_widget("Email"),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 32,right: 32),
                child:  inputfield_widget("Password"),
              ),

              Container(
                margin: const EdgeInsets.only(left: 32,right: 32),
                child:loginbtn(null),
              ),
         Container(
           margin: const EdgeInsets.only(left: 32,right: 32),
           child:divider(),
         ),
              Container(
                margin: const EdgeInsets.only(left: 32,right: 32),
                  child: guest(() {
                    print('Continue as guest button pressed!');
                  })
              ),
              Container(height: 30),
              text_widget("Don't have an account?Sign Up!", 17, FontWeight.w400, Color.fromRGBO(140, 138, 138, 1)),
            ]
        ),
      ),
    );
  }
}

Widget _logo()
{
  return Container(
    width: 277,
    height: 150,
    //padding: EdgeInsets.only(bottom: 10),
    child: Image.asset('Assets/dit.jpg'),
  );
}
