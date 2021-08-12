import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key key,
      @required this.text,
      @required this.color,
      @required this.press,
      @required this.shape,
      @required this.primary})
      : super(key: key);
  final String text;
  final Color color;
  final Color primary;
  final Function press;
  final OutlinedBorder shape;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
          backgroundColor: color,
          primary: primary,
          textStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          fixedSize: Size(0, 50.0),
          side: text.contains("Login")
              ? BorderSide(color: Colors.white)
              : BorderSide.none,
          shape: shape),
      child: Text(text),
    );
  }
}
