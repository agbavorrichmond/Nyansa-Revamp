
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
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
                            SvgPicture.asset('assets/icons/music_icon.svg'),
                            SizedBox(
                              width: 70,
                            ),
                            SvgPicture.asset('assets/icons/play_icon.svg'),
                            SizedBox(
                              width: 70,
                            ),
                            SvgPicture.asset('assets/icons/like_icon.svg'),
                          ],
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
}
