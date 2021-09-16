import 'package:flutter/material.dart';
import 'package:nyansa/constants/colours.dart';
import 'package:nyansa/screens/home_screen.dart';

class HandOffScreen extends StatelessWidget{

  static const routeName = 'handOff';
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorSys.pinScreenColour,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 48.0),
        child: Container(
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You can now handover the device to the child',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorSys.white,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0
                ),
              ),

              SizedBox(
                height: 28.0,
              ),

              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: ColorSys.nextButtonColour
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
                    child: Text(
                      'Hand over to child',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: ColorSys.white,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 32.0,
              ),

              Container(
                child: Text(
                  'Revise settings',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: ColorSys.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}