import 'package:dit_events/utils/colors.dart';
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
  final String text3="Continue as Guest";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:  Center(
        child: Padding(
          padding:const  EdgeInsets.only(left:32,right:32),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _logo(),

              //welcome text
              const SizedBox(height: 25),
          Text(
            wel,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: 'Inter',
                fontSize:24,
                color: CustomColors.btn1_txtColor,
                fontWeight:FontWeight.w400
            ),
          ),

              //input field via e mail
              const SizedBox(height: 20),
              inputfield_widget(mail,false,CustomColors.greyColor1),

              //input field via password
              const SizedBox(height: 20),
              inputfield_widget(pass,true,CustomColors.greyColor1),

              // button 1 (login button)
              const SizedBox(height: 20),
              button(login,()
              {
                  print('login!!!');
                }
                ),

              // OR divider
              const SizedBox(height: 20),
               divider(),

              // button 2(guest button)
              const SizedBox(height: 20),
                Guest(()
                {
                print('Continue as guest button pressed!');
                },
                    text3
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
                    color: CustomColors.greyColor2,
                    fontWeight:FontWeight.w400
                ),
              ),
                 TextButton(onPressed: ()
                 {
                   print("log in");
                 },
                   child: Text(
                 text2,
                  textAlign: TextAlign.center,
                  style:  const TextStyle
                  (
                    fontFamily: 'Inter',
                    fontSize:17,
                    color: CustomColors.blueColor1,
                    fontWeight:FontWeight.w700
                  ),
              )
                 ),
            ],
                 ),
            ],
        ),
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
