import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {

  final String text;
  final TextInputType type;
  final String hintText;
  final double height;
  final TextEditingController controller;
  final bool isPassword;
  final String validator;
  const MyForm(
      {Key? key, required this.text, required this.type, required this.hintText, this.height = 55.0, required this.controller,  this.isPassword = false, required this.validator,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: height,
          child: TextFormField(
            keyboardType: type,
            controller: controller,
            obscureText:isPassword,
            validator: (value){
              if(value!.isEmpty){
                return validator;
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Colors.grey.shade500, fontWeight: FontWeight.w600),
              border: OutlineInputBorder(),
              //fillColor: Color(0xfff3f3f4)
            ),
          ),
        )
      ],
    );
  }
}

