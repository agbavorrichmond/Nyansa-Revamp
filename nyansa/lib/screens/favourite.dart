import 'package:flutter/material.dart';
import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/components/searchButton.dart';

import '../constants.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        "Favourite Books",
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundColor: kprimaryColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 8.0, 25.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 18.52, 0, 25.8),
              child: SearchButton(),
            ),
            Container(
              height: 225,
              width: 154,
              child: Image.asset("assets/images/jungle_book.jpg"),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Container(
            //       height: 225,
            //       width: 154,
            //       child: Image.asset("assets/images/jungle_book.jpg"),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
