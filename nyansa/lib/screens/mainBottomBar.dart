import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nyansa/constants.dart';
import 'package:nyansa/screens/favourite.dart';
import 'package:nyansa/screens/home.dart';
import 'package:nyansa/screens/search.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  static final title = 'salomon_bottom_bar';

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: _currentIndex,
      onTap: (i) {
        setState(() => _currentIndex = i);
        if (_currentIndex == 0) {
          return Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Home();
          }));
        } else if (_currentIndex == 1) {
          return Navigator.push(context, MaterialPageRoute(builder: (_) {
            return Search();
          }));
        } else if (_currentIndex == 2) {
          return Navigator.push(context, MaterialPageRoute(builder: (_) {
            return Favourite();
          }));
        } else
          return Navigator.push(context, MaterialPageRoute(builder: (_) {
            return Search();
          }));
      },
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: SvgPicture.asset(
            "assets/icons/home.svg",
            color: _currentIndex == 0 ? kprimaryColor : null,
          ),
          title: Text(""),
          selectedColor: kprimaryColor,
        ),

        /// Search
        SalomonBottomBarItem(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: _currentIndex == 1 ? kprimaryColor : null,
          ),
          title: Text(""),
          selectedColor: kprimaryColor,
        ),

        /// Favourite
        SalomonBottomBarItem(
          icon: SvgPicture.asset(
            "assets/icons/fav.svg",
            color: _currentIndex == 2 ? kprimaryColor : null,
          ),
          title: Text(""),
          selectedColor: kprimaryColor,
        ),

        /// Lock
        SalomonBottomBarItem(
          icon: SvgPicture.asset("assets/icons/other.svg"),
          title: Text(""),
          selectedColor: kprimaryColor,
        ),
      ],
    );
  }
}
