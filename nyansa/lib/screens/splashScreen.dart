import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nyansa/screens/welcome.dart';

class SplashScreen extends StatefulWidget {

  static const routeName  = 'splash';

  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      return Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Welcome()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D59A7),
      body: Center(child: SvgPicture.asset("assets/images/nyansa.svg")),
    );
  }
}
