import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dit_events/utils/colors.dart';
class button extends StatelessWidget {
  final String txt;
  final VoidCallback? callback;
  const button(this.txt,this.callback);
  @override
  Widget build(BuildContext context)
  {
    return Container
      (
      child: ElevatedButton(style: ElevatedButton.styleFrom
        (
          backgroundColor: CustomColors.blueColor1,
          shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      ),
      ),
        onPressed: () {
          callback!();
        },
        child: SizedBox(
          width: double.infinity,
          child: Text(txt,
            style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            ),
            textAlign: TextAlign.center,
          ),

        ),
      ),
    );
  }
}

