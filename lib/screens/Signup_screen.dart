import 'package:dit_events/utils/colors.dart';
import 'package:flutter/material.dart';
import '../custom_widgets/inputfield_widget.dart';
import '../custom_widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';
class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});
  static const routeName = '/Signup-screen';
  @override
  State<Signup_screen> createState() => _Signup_screenState();
}
class _Signup_screenState extends State<Signup_screen> {
  final String wel_txt='Create a account ';
  final String signup='Sign up';
  final String name='NAME';
  final String mail='E-MAIL';
  final String pass="PASSWORD";
  final String phoneno="PHONE NUMBER";
  final String Sapid="SAP ID";
  final String text1="Already have account?";
  final String text2="Login";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
          child: Container(
          width: double.infinity,
              child: AppBar(
             backgroundColor: CustomColors.blueColor1,
              automaticallyImplyLeading: false,
                shape:const  RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
                ),
                ),
                ),
        ),
        ),
          body:  Center(
            child: Padding(
              padding:const  EdgeInsets.only(left:32,right:32),
              child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                    wel_txt,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize:30,
                        color: CustomColors.btn1_txtColor,
                        fontWeight:FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 26),
                  inputfield_widget(name,false,CustomColors.white),

                  const SizedBox(height: 22),
                  inputfield_widget(mail,false,CustomColors.white),

                  const SizedBox(height: 22),
                  inputfield_widget(phoneno,false,CustomColors.white),

                  const SizedBox(height: 22),
                  inputfield_widget(pass,true,CustomColors.white),

                  //input field via password
                  const SizedBox(height: 22),
                  inputfield_widget(Sapid,false,CustomColors.white),

                  const SizedBox(height: 30),
                  button(signup,()
                  {
                    print('Continue as guest button pressed!');
                  }
                  ),

                  // to show and print text of sign up and account
                  Container(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text1,
                        textAlign: TextAlign.center,
                        style:GoogleFonts.inter(
                          textStyle:const TextStyle(
                              fontSize:17,
                              color: CustomColors.greyColor2,
                              fontWeight:FontWeight.w400
                          ),
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          child: Text(
                            text2,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize:17,
                              color: CustomColors.blueColor1,
                              fontWeight:FontWeight.w400,
                            ),
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
            ),
          ),
        );
      }
    }
