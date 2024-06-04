import 'package:flutter/material.dart';
import 'package:dit_events/custom_widgets/divider.dart';
import 'package:dit_events/custom_widgets/button2.dart';
import '../custom_widgets/inputfield_widget.dart';
import '../custom_widgets/button.dart';
class Login_screen extends StatefulWidget {
  const Login_screen({super.key});
  static const routeName = '/login-screen';
  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  final String wel='Welcome to DIT University.';
  final String login='Login';
  final String mail='E-mail';
  final String pass="Password";
  final String text1="Don't have an account? ";
  final String text2=" Sign Up!";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:  Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _logo(),
              const SizedBox(height: 25),
          //welcome text
          Text(
            wel,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Inter',
                fontSize:24,
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight:FontWeight.w400
            ),
          ),
              const SizedBox(height: 20),
              //input field via e mail
              Container(
                margin: const EdgeInsets.only(left: 32,right: 32),
                child : inputfield_widget(mail,false),
              ),
              const SizedBox(height: 20),
              //input field via password
              Container(
                margin: const EdgeInsets.only(left: 32,right: 32),
                child:   inputfield_widget(pass,true),
              ),
              const SizedBox(height: 20),
              // button 1 (login button)
              Container(
                margin: const EdgeInsets.only(left: 32,right: 32),
                child:const  LoginBtn(null),
              ),
              const SizedBox(height: 20),
            // OR divider
            Container(
            margin: const EdgeInsets.only(left: 32,right: 32),
             child:divider(),
              ),
              const SizedBox(height: 20),
              // button 2(guest button)
              Container(
                margin: const EdgeInsets.only(left: 32,right: 32),
                  child:const  Guest(null),
                // {
                  //   print('Continue as guest button pressed!');
                  // })
              ),
              // to show and print text of sign up and account
              Container(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(
                text1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize:17,
                    color: Color.fromRGBO(140, 138, 138, 1),
                    fontWeight:FontWeight.w400
                ),
              ),
                 Text(
                 text2,
                textAlign: TextAlign.center,
                style:  const TextStyle
                  (
                    fontFamily: 'Inter',
                    fontSize:17,
                    color: Color.fromRGBO(2, 148, 219, 1),
                    fontWeight:FontWeight.w700
                ),
              )
          ],
              ),
            ],
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
    child: Image.asset('Assets/dit.jpg'),
  );
}
