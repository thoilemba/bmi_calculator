import 'package:flutter/material.dart';
import 'constant.dart';

// this is a custom Widget
class IconContent extends StatelessWidget {

  final IconData myIcon;
  final String label;

  const IconContent({super.key, required this.myIcon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          color: Colors.blue,
          size: 50,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}