import 'package:flutter/material.dart';
import 'package:nyansa/constants.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFE5E5E5),
        hintText: "Look For Books",
        prefixIcon: Icon(
          Icons.search,
          color: kdescriptionColor,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: Color(0xFF00ACA8),
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide.none),
      ),
    );
  }
}
