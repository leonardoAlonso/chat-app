import 'package:flutter/material.dart';

class BtnBlue extends StatelessWidget {

  final String text;
  final VoidCallback? onPressed;

  const BtnBlue({
      Key? key,
      required this.text,
      required this.onPressed
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
            ),
          )
        )
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        shape: StadiumBorder(),
      )
    );
  }
}