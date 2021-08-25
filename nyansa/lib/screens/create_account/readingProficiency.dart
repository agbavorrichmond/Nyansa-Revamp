import 'package:flutter/material.dart';
import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/components/customButton.dart';
import 'package:nyansa/constants.dart';
import 'package:nyansa/screens/create_account/readingRestrictions.dart';

import 'help.dart';

class ReadingProficiency extends StatelessWidget {
  const ReadingProficiency({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Set child’s reading proficiency", Container()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 12.29),
            Text(
              "Set your ward’s reading level",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 34.92),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(40.0),
                  backgroundColor: Color(0xFFF8F8F8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Help()));
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFFE7E7E7),
                      foregroundColor: Color(0xFFE7E7E7),
                      child: Icon(Icons.help_outline, color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Get help understanding child proficiency level",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF3F3F3F)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 39.92),
            CustomButton(
              text: "Beginner",
              color: kprimaryColor,
              primary: Colors.white,
              press: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            SizedBox(height: 12.42),
            CustomButton(
              text: "intermediate",
              color: Color(0xFFFCFCFC),
              primary: Color(0xFF828282),
              press: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            SizedBox(height: 12.42),
            CustomButton(
              text: "Advanced",
              color: Color(0xFFFCFCFC),
              primary: Color(0xFF828282),
              press: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            SizedBox(height: 12.42),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 198.0, bottom: 44.0),
              child: CustomButton(
                text: "Continue",
                color: kprimaryColor,
                primary: Colors.white,
                press: () {
                  return Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ReadingRestrictions()));
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
