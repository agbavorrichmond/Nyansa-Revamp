import 'package:flutter/material.dart';
import 'package:nyansa/constants/colours.dart';

class OTPFieldTemplate extends StatelessWidget{

  final TextEditingController controller;
  final TextInputAction inputAction;
  final bool enabled;
  final bool obscure;

  const OTPFieldTemplate({Key key, this.controller, this.inputAction, this.enabled, this.obscure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        height: 60,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: ColorSys.clearButtonColour,
        ),
        child: TextField(
          textAlign: TextAlign.center,
          onChanged: (_) => node.nextFocus(),
          keyboardType: TextInputType.number,
          maxLines: 1,
          maxLength: 1,
          controller: controller,
          obscureText: obscure,
          autofocus: true,
          textInputAction: inputAction,
          enabled: enabled,
          decoration: InputDecoration(
            counterText: '',
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorSys.clearButtonColour)),
            hintStyle: TextStyle(
              color: ColorSys.white ,
              fontSize: 14.0,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w400,
            ),
          ),
          style: TextStyle(
            color: ColorSys.white ,
            fontSize: 14.0,
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

}