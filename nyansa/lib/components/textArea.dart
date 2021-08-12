import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  final String labelText;
  final Icon icon;

  const TextArea({
    Key key,
    @required this.labelText,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusColor: Colors.black,
        prefixIcon: icon,
        labelText: labelText,
        // hintText: "Email",
      ),
    );
  }
}
