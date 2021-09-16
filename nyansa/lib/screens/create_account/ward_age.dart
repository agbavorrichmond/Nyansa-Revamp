import 'package:flutter/material.dart';
import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/components/customButton.dart';
import 'package:nyansa/components/textArea.dart';
import 'package:nyansa/screens/create_account/pin_screen.dart';

import '../../constants.dart';

class WardAge extends StatelessWidget {

  static const routeName = "wardAge";

  const WardAge({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("How old is your ward?", Container()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextArea(
              labelText: "Child's age",
              icon: null,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 198.0, bottom: 44.0),
              child: CustomButton(
                text: "Continue",
                color: kprimaryColor,
                primary: Colors.white,
                press: () {
                  Navigator.pushNamed(context, PinScreen.routeName);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
