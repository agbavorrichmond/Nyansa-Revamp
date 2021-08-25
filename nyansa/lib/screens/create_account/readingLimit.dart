import 'package:flutter/material.dart';

import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/components/customButton.dart';
import 'package:nyansa/constants.dart';
import 'package:nyansa/screens/create_account/wardInfo.dart';

class ReadingLimit extends StatefulWidget {
  const ReadingLimit({Key key}) : super(key: key);

  @override
  _ReadingLimitState createState() => _ReadingLimitState();
}

class _ReadingLimitState extends State<ReadingLimit> {
  int readingLimit = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Set daily reading limit", Container()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  return setState(() {
                    readingLimit++;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: kproficiencyColor,
                  radius: 30,
                  child: Icon(
                    Icons.arrow_drop_up,
                    size: 40.0,
                    color: Color(0xFF00ACA8),
                  ),
                ),
              ),
              SizedBox(height: 36.8),
              Text(
                "$readingLimit mins",
                style: TextStyle(fontSize: 37.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 36.8),
              GestureDetector(
                onTap: () {
                  if (readingLimit > 0) {
                    setState(() {
                      readingLimit--;
                    });
                  } else
                    setState(() {
                      readingLimit = 0;
                    });
                },
                child: CircleAvatar(
                  backgroundColor: kproficiencyColor,
                  radius: 30,
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 40.0,
                    color: Color(0xFF00ACA8),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 95.94),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.32),
            child: Text(
              "Research shows that the average reading time for children is about 20 mins",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
            ),
          ),
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.only(left: 198.0, bottom: 44.0, right: 25.0),
            child: CustomButton(
              text: "Continue",
              color: kprimaryColor,
              primary: Colors.white,
              press: () {
                return Navigator.push(
                    context, MaterialPageRoute(builder: (_) => WardInfo()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
