import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buttonsFacebookGoogle({@required Function onTappedFacebookButton, @required Function onTappedGoogleButton}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      FlatButton(
        onPressed: () {
          onTappedFacebookButton();
        },
        height: 50,
        minWidth: 120,
        child: Center(
          child: Container(
            child: Image.asset('assets/Facebook_icon.png'),
          ),
        ),
        color: Color(0x1A008B83),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
      ),
      FlatButton(
        onPressed: () {onTappedGoogleButton();},
        height: 50,
        minWidth: 120,
        child: Center(
          child: Container(
            child: Image.asset('assets/Google_icon.png'),
          ),
        ),
        color: Color(0x1A008B83),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
      )
    ],
  );
}

Widget button(BuildContext context, String label, Color color, Function onTapButton) {
  return FlatButton(
    onPressed: () {onTapButton();},
    color: color,
    height: 45.0,
    minWidth: 282.0,
    textColor: Colors.white,
    shape:
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Text(label,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600))),
  );
}