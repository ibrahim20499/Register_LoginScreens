import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  bool isActive;

  Indicator(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 8 : 6,
      width: isActive ? 22 : 20,
      decoration: BoxDecoration(
        color: isActive ? Colors.brown.shade200 : Colors.grey.shade300,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}