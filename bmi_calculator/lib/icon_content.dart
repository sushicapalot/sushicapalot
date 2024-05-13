import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 25,
);

class IconContent extends StatelessWidget {
  IconContent({required this.myIcon, required this.myGender});

  final IconData myIcon;
  final String myGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Icon(myIcon, size: 85),
        ),
        SizedBox(
          height: 10,
        ),
        Text(style:labelTextStyle,myGender)
      ],
    );
  }
}
