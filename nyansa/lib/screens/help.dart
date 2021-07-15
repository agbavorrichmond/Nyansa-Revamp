import 'package:flutter/material.dart';
import 'package:nyansa/components/appBar.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Proficiency levels details"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            buildText(text: "Beginner"),
            buildText(text: "Intermediate"),
            buildText(text: "Advanced"),
          ],
        ),
      ),
    );
  }

  Column buildText({String? text, String? description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 33.29),
        Text(
          text!,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 17.64),
        Text(
          "Blandit mauris, leo venenatis tempus. Etiam sit turpis ultricies posuere non gravida ut egestas. Nibh lacus interdum vitae lorem vitae purus nunc fames potenti. Volutpat egestas felis, ac nec rhoncus. Mi, metus urna magna tincidunt praesent cras eu lectus ut. Nulla sem viverra sed sit fermentum morbi sed.",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 41.23),
      ],
    );
  }
}
