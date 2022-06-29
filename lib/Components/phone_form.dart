import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneForm extends StatelessWidget {

  final String text;
  final TextInputType type;
  final String hintText;
  final double height;
  final TextEditingController controller;
  final String validator;
  const PhoneForm(
      {Key? key, required this.text, required this.type, required this.hintText, this.height = 55.0, required this.controller, required this.validator})
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
            controller: controller,
            validator: (value){
              if(value!.isEmpty){
                return validator;
              }
              return null;
            },
            keyboardType: type,
            decoration: InputDecoration(
              //labelText: 'Email',
              hintText: hintText,
              prefixIcon: CountryCodePicker(
                initialSelection: 'IN',
                showFlagMain: false,
              ),
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
