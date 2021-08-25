import 'package:flutter/material.dart';
import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/components/customButton.dart';
import 'package:nyansa/components/textArea.dart';

import '../../constants.dart';

class WardInfo extends StatelessWidget {
  const WardInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("What is your ward’s name?", Container()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextArea(
              labelText: "Child's name",
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
                  // return Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => ReadingLimit()));
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
