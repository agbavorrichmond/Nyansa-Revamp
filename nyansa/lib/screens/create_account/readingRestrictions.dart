import 'package:flutter/material.dart';
import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/components/customButton.dart';
import 'package:nyansa/constants.dart';

import 'readingLimit.dart';

class ReadingRestrictions extends StatelessWidget {
  const ReadingRestrictions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Add Reading Restrictions"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 8,
              child: ListView(
                children: [
                  for (int i = 0; i < 10; i++)
                    CustomButton(
                      text: "Religious Books",
                      color: kproficiencyColor,
                      primary: Color(0xFF00ACA8),
                      press: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 198.0, bottom: 44.0),
              child: CustomButton(
                text: "Continue",
                color: kprimaryColor,
                primary: Colors.white,
                press: () {
                  return Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ReadingLimit()));
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
