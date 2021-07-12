import 'package:flutter/material.dart';

class Label extends StatelessWidget {

  final String text;
  final TextStyle style;
  final VoidCallback onTap;

  const Label({Key? key,
    required this.text,
    required this.style,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        this.text,
        style: this.style
      ),
      onTap: this.onTap
    );
  }
}