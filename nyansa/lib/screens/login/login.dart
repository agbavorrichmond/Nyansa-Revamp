import 'package:flutter/material.dart';
import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/components/customButton.dart';
import 'package:nyansa/components/textArea.dart';
import 'package:nyansa/constants.dart';

import '../home.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Login", Container()),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextArea(
                labelText: "Email",
                icon: Icon(Icons.email_outlined),
              ),
              SizedBox(height: 24.5),
              TextArea(
                labelText: "Password",
                icon: Icon(Icons.password_rounded),
              ),
              SizedBox(height: 30.0),
              Text(
                "forgot password?",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30.0),
              CustomButton(
                text: "Login",
                color: kprimaryColor,
                primary: Colors.white,
                press: () {
                  return Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Home()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
