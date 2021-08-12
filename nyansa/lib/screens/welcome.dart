import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nyansa/components/customButton.dart';
import 'package:nyansa/constants.dart';
import 'package:nyansa/screens/createAccount.dart';

import 'login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/child.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 200.0),
              Expanded(child: SvgPicture.asset("assets/images/nyansa.svg")),
              SizedBox(height: 160.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Only guardians can create an account for a child",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 32.0),
                    CustomButton(
                      text: "Create Account",
                      color: kprimaryColor,
                      primary: Colors.white,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccount()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    CustomButton(
                      text: "Login",
                      color: Colors.transparent,
                      primary: Colors.white,
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
