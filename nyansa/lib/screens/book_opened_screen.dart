
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nyansa/constants.dart';
import 'package:nyansa/constants/colours.dart';

class BookOpenedScreen extends StatefulWidget{

  static const routeName = 'bookOpened';

  @override
  _BookOpenedScreenState createState() => _BookOpenedScreenState();
}

class _BookOpenedScreenState extends State<BookOpenedScreen> {

  double height;
  double width;
  bool showControls = true;

  bool playCLicked = false;
  bool musicCLicked = false;
  bool favoriteCLicked = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  //toggle show and hide of bottom container containing controls
  void toggleBottomContainer(){

  }


  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

   return Scaffold(
     backgroundColor: ColorSys.pinScreenColour,
     body: GestureDetector(
       behavior: HitTestBehavior.opaque,
       onTap: (){
         setState(() {
           showControls = !showControls;
         });
         print(showControls);
       },
       child: Stack(
        children: [
          Visibility(
            visible: playCLicked,
            child: dictionaryLayout(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(),
                  AnimatedOpacity(
                    opacity: showControls ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 300),
                    child: Visibility(
                      visible: showControls,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          color: ColorSys.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 54.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    musicCLicked = !musicCLicked;
                                  });
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/music_icon.svg',
                                  color: musicCLicked ? kprimaryColor : ColorSys.gray,
                                ),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    playCLicked = !playCLicked;
                                  });
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/play_icon.svg',
                                  color: playCLicked ? kprimaryColor : ColorSys.gray,
                                ),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    favoriteCLicked = !playCLicked;
                                  });
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/like_icon.svg',
                                  color: favoriteCLicked ? kprimaryColor : ColorSys.gray,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          )
        ],
       ),
     ),
   );
  }

  Widget dictionaryTileLayout(){
    return Opacity(
      opacity: 0.4,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorSys.dictionaryTileColour,
            ),

          ),
        ),
      ),
    );
  }


  Widget dictionaryLayout(){
    return Padding(
      padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 48.0, bottom: 100),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: dictionaryTileLayout(),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: dictionaryTileLayout(),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: dictionaryTileLayout(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: dictionaryTileLayout(),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: dictionaryTileLayout(),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: dictionaryTileLayout(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: dictionaryTileLayout(),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: dictionaryTileLayout(),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: dictionaryTileLayout(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
