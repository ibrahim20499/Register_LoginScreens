import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingWithGoogleButton extends StatelessWidget {
  final String text;
  final double height;
  final double radius;
  final Color textColor;
  final Color buttonColor;
  final String image;
  final Color borderColor;

  const SingWithGoogleButton(
      {Key? key,
        required this.text,
        this.height = 55.0,
        this.radius = 5.0,
        this.textColor = Colors.blue,
        this.buttonColor = Colors.white,
        this.image='asset/google.png', this.borderColor= Colors.blue,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        border: Border.all(color:borderColor, width: 1.2),
      ),
      // clipBehavior: Clip.antiAliasWithSaveLayer,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: buttonColor),
        onPressed: () {}, child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,height: 20,width: 20,),
          SizedBox(width: 6,),
          Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
      ),
    );
  }
}