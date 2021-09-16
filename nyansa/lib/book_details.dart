import 'package:flutter/material.dart';
import 'package:nyansa/constants.dart';
import 'package:nyansa/screens/book_opened_screen.dart';

class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  return Navigator.pop(context);
                },
                child: Stack(
                  children: [
                    Image.asset("assets/images/header_image.jpg", scale: 0.9),
                    Positioned(
                      top: 50.0,
                      left: 10.0,
                      child: Image.asset("assets/images/back.png"),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, BookOpenedScreen.routeName);
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(0.0, 50.0),
                      backgroundColor: kprimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    child: Text("Read the book"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 15.9),
                      Text("10 mins read"),
                      SizedBox(height: 24.76),
                      Text(
                        "about the book",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 7.96),
                      Text(
                        "Libero vulputate risus, adipiscing eget at egestas pellentesque et. Pharetra blandit mollis proin pulvinar sed feugiat et. Congue lobortis pretium, facilisis vestibulum euismod ipsum faucibus. Scelerisque aliquam senectus diam vulputate ullamcorper felis elementum, tellus.",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF4F4F4F),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 198.0, bottom: 44.0, top: 40.8),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              fixedSize: Size(0.0, 50.0),
                              backgroundColor: Color(0xFFEE5092),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            label: Text("Read the book"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
