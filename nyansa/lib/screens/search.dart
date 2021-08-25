import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/components/searchButton.dart';

import '../constants.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        "Search for books",
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
        padding: const EdgeInsets.fromLTRB(25.0, 18.52, 25.0, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 18.52, 0, 25.8),
              child: SearchButton(),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 1.10,
                    maxWidth: double.infinity,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      rowItems(
                        itemOneColor: "assets/images/Colors.png",
                        itemTwoColor: "assets/images/Animals.png",
                        itemOneText: "Colours",
                        itemTwoText: "Animals",
                      ),
                      rowItems(
                        itemOneColor: "assets/images/Objects.png",
                        itemTwoColor: "assets/images/Dogs.png",
                        itemOneText: "Objects",
                        itemTwoText: "Dogs",
                      ),
                      rowItems(
                        itemOneColor: "assets/images/Colors.png",
                        itemTwoColor: "assets/images/Colors.png",
                        itemOneText: "Colors",
                        itemTwoText: "Colors",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kprimaryColor,
        child: SvgPicture.asset(
          "assets/icons/plain-microphone.svg",
          width: 30,
          height: 30,
        ),
      ),
    );
  }

  Row rowItems(
      {String itemOneColor,
      String itemTwoColor,
      String itemOneText,
      String itemTwoText}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        customContainer(itemOneColor, itemOneText),
        SizedBox(width: 19.0),
        customContainer(itemTwoColor, itemTwoText),
      ],
    );
  }

  Widget customContainer(String colorUrl, String text) {
    return Expanded(
      child: Container(
        height: 249.39,
        width: 153,
        decoration: BoxDecoration(
          color: Color(0xffF0F0F0),
          image: DecorationImage(image: AssetImage(colorUrl)),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
