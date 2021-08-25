import 'package:flutter/material.dart';

AppBar appBar(String text, Widget widget) {
  return AppBar(
    elevation: 0,
    title: Text(
      text,
      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
    ),
    backgroundColor: Colors.transparent,
    actions: [widget],
  );
}
