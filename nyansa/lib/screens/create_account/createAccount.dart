import 'package:flutter/material.dart';
import 'package:nyansa/components/customButton.dart';
import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/components/textArea.dart';
import 'package:nyansa/constants.dart';
import 'package:nyansa/screens/create_account/readingProficiency.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Create Account", Container()),
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
                "By tapping continue you agree to our terms of service and Privact policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30.0),
              CustomButton(
                text: "Create an account",
                color: kprimaryColor,
                primary: Colors.white,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReadingProficiency()));
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
