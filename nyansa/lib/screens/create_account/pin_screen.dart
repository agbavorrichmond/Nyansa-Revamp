import 'package:flutter/material.dart';
import 'package:nyansa/components/otp_field_template.dart';
import 'package:nyansa/constants/colours.dart';
import 'package:nyansa/screens/create_account/hand_off_screen.dart';

class PinScreen extends StatelessWidget{

  static const String routeName = 'pinScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSys.pinScreenColour,
      body: Container(
        child: OtpFields(),
      ),
    );
  }

}

class OtpFields extends StatefulWidget{

  @override
  _OtpFieldsState createState() => _OtpFieldsState();
}

class _OtpFieldsState extends State<OtpFields> {
  TextEditingController pinController1;
  TextEditingController pinController2;
  TextEditingController pinController3;
  TextEditingController pinController4;

  int currentIndex = 0;

  var pinScreenText = ['Enter Pin', 'Confirm Pin'];
  var pinButtonText = ['Next', 'Done'];

  @override
  void initState() {
    pinController1 = new TextEditingController();
    pinController2 = new TextEditingController();
    pinController3 = new TextEditingController();
    pinController4 = new TextEditingController();
    super.initState();
  }

  var outlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.transparent),
  );

  List<String> currentPin = ['','','',''];

  int pinIndex = 0;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {

    height  = MediaQuery.of(context).size.height;
    width  = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(

          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                ),
                SizedBox(
                  height: height*0.111607,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: OTPFieldTemplate(
                          controller: pinController1,
                          enabled: false,
                          obscure: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: OTPFieldTemplate(
                          controller: pinController2,
                          enabled: false,
                          obscure: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: OTPFieldTemplate(
                          controller: pinController3,
                          enabled: false,
                          obscure: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: OTPFieldTemplate(
                          controller: pinController4,
                          enabled: false,
                          obscure: true,
                        ),
                      ),
                    ],
                  ),

                ),

                SizedBox(
                  height: 14.0,
                ),

                Container(
                  child: Text(
                    pinScreenText[currentIndex],
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      fontFamily: 'Nunito',
                      color: ColorSys.white
                    ),
                  ),
                ),

                SizedBox(
                  height: height*0.0446,
                ),

                buildNumPad(),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildNumPad(){
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          //padding: EdgeInsets.only(bottom: height*0.0055),
          padding: EdgeInsets.only(bottom: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: 1,
                    onPressed: (){
                      pinIndexSetUp('1');
                    },
                  ),
                  KeyboardNumber(
                    n: 2,
                    onPressed: (){
                      pinIndexSetUp('2');
                    },
                  ),
                  KeyboardNumber(
                    n: 3,
                    onPressed: (){
                      pinIndexSetUp('3');
                    },
                  )
                ],
              ),
              SizedBox(
                height: height*0.0356,
              ),
              //second row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: 4,
                    onPressed: (){
                      pinIndexSetUp('4');
                    }
                    ,
                  ),
                  KeyboardNumber(
                    n: 5,
                    onPressed: (){
                      pinIndexSetUp('5');
                    },
                  ),
                  KeyboardNumber(
                    n: 6,
                    onPressed: (){
                      pinIndexSetUp('6');
                    },
                  )
                ],
              ),
              SizedBox(
                height: height*0.0356,
              ),
              //third row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: 7,
                    onPressed: (){
                      pinIndexSetUp('7');
                    },
                  ),
                  KeyboardNumber(
                    n: 8,
                    onPressed: (){
                      pinIndexSetUp('8');
                    },
                  ),
                  KeyboardNumber(
                    n: 9,
                    onPressed: (){
                      pinIndexSetUp('9');
                    },
                  )
                ],
              ),
              SizedBox(
                height: height*0.0356,
              ),
              //fourth row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: clearPin,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: ColorSys.clearButtonColour
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
                        child: Text(
                          'Clear',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: ColorSys.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  KeyboardNumber(
                    n: 0,
                    onPressed: (){
                      pinIndexSetUp('0');
                    },
                  ),
                  GestureDetector(
                    onTap: (){
                      if(currentIndex == 0){
                        setState(() {
                          currentIndex = 1;
                          pinController1.text = '';
                          pinController2.text = '';
                          pinController3.text = '';
                          pinController4.text = '';
                        });
                      }
                      else{
                        Navigator.pushNamed(context, HandOffScreen.routeName);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: ColorSys.nextButtonColour
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
                        child: Text(
                          pinButtonText[currentIndex],
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: ColorSys.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 30.0,
              ),

              /*Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: (){

                  },
                  splashColor: ColorSys.gray,
                  highlightColor: ColorSys.gray,
                  child: Text(
                    'Forgot Pin?',
                    style: TextStyle(
                      color: ColorSys.primary ,
                      fontSize: 16.0 *  MediaQuery.of(context).textScaleFactor,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }

  clearPin(){
    if (pinIndex == 0) {
      pinIndex = 0;
    }  
    else if (pinIndex == 4) {
      setUpPin(pinIndex, '');
      currentPin[pinIndex - 1] = '';
      pinIndex--;
    }
    else{
      setUpPin(pinIndex, '');
      currentPin[pinIndex - 1] = '';
      pinIndex--;
    }
  }

  pinIndexSetUp(String text){
    if (pinIndex == 0) {
      pinIndex = 1;
    }
    else if (pinIndex < 4) {
      pinIndex ++;
    }
    setUpPin(pinIndex, text);
    currentPin[pinIndex-1] = text;
    String strPin = '';
    currentPin.forEach((e) {
      strPin += e;
    });

    if (pinIndex == 4) {
      print(strPin);
    }
  }

  setUpPin(int n, String text) {
    switch (n) {
      case 1:
        pinController1.text = text;
        break;
      case 2:
        pinController2.text = text;
        break;
      case 3:
        pinController3.text = text;
        break;
      case 4:
        pinController4.text = text;
        break;
    }
  }
}

class KeyboardNumber extends StatelessWidget{
  final int n;
  final Function onPressed;

  const KeyboardNumber({Key key, this.n, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: onPressed,
        splashColor: ColorSys.white,
        highlightColor: ColorSys.white,
        height: 90.0,
        child: Text(
          '$n',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorSys.white ,
            fontSize: 24.0 *  MediaQuery.of(context).textScaleFactor,
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

}