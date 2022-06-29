import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GuidlinesText extends StatelessWidget {
  final String text;
  final String textButton;
  final Color textColor;
  final Color textButtonColor;
  final VoidCallback onClick;

  const GuidlinesText(
      {Key? key,
      required this.text,
      required this.textButton,
      required this.textColor,
      required this.textButtonColor ,
      required this.onClick})
      : super(key: key);

  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
      Text(
        text,
        style: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w600, color: textColor),
      ),
      MaterialButton(
        onPressed: onClick,
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Text(
          textButton,
          style: TextStyle(
              color: textButtonColor,
              fontSize: 16.5,
              fontWeight: FontWeight.w600),
        ),
      ),
    ]);
  }
}

class PolicyText extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color;
  final Color color2;
  final double fontSize;

  const PolicyText(
      {Key? key,
      required this.text1,
      required this.text2,
      this.color = Colors.grey,
      this.fontSize = 15,
      required this.color2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: text1,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w500,
              fontSize: fontSize,
            ),
            children: <TextSpan>[
              TextSpan(
                text: text2,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: color2,
                  fontWeight: FontWeight.w500,
                  fontSize: fontSize,
                ),
              ),
            ]),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color text1Color;
  final Color text2Color;
  final Color text3Color;
  final double fontSize;
  final double buttonFontSize;
  final IconData icon;
  final double height;

  const MyText(
      {Key? key,
      required this.text1,
      required this.text2,
      this.text1Color = Colors.grey,
      this.fontSize = 15,
      required this.text3,
      this.text2Color = Colors.black,
      this.text3Color = Colors.blue,
      this.buttonFontSize = 20.0,
      required this.height,
      this.icon = EvaIcons.questionMarkCircle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            text1,
            style: TextStyle(fontSize: fontSize, color: text1Color),
          ),
        ),
        SizedBox(height: height),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text2,
              style: TextStyle(
                fontSize: 40,
                color: text2Color,
                fontFamily: 'Poppins',
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextButton.icon(
                label: Text(
                  text3,
                  style: TextStyle(
                    fontSize: buttonFontSize,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Poppins',
                  ),
                ),
                icon: Icon(icon),
                //style: ,

                onPressed: () {},
              ),
            )
          ],
        ),
      ],
    );
  }
}
