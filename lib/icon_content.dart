import 'package:flutter/material.dart';

const labelText = TextStyle(
    fontSize: 18.0, color: Color(0xFF8D8E98)
);


class IconContent extends StatelessWidget {

  final IconData icon;
  final String label;

  IconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Icon(
          icon,
          size: 100.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label, style: labelText,
        )
      ],
    );
  }
}