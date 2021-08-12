import 'package:flutter/material.dart';
import 'package:nyansa/components/appBar.dart';
import 'package:nyansa/constants.dart';

class Help extends StatelessWidget {
  const Help({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Proficiency levels details"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 33.29),
            buildText(
              text: "Early Emergent Readers",
              description:
                  "Aspiring readers are just beginning to grasp the basic concepts of book and print. They are acquiring a command of the alphabet with the ability to recognize and name upper- and lowercase letters. They are also developing many phonological awareness skills, such as recognizing phonemes, syllables, and rhyme.",
            ),
            buildText(
              text: "Emergent Readers",
              description:
                  "Readers at this stage have developed an understanding of the alphabet, phonological awareness, and early phonics. They have command of a significant number of high-frequency words. Emergent readers are developing a much better grasp of comprehension strategies and word-attack skills. They can recognize different types of text, particularly fiction and nonfiction, and recognize that reading has a variety of purposes.",
            ),
            buildText(
              text: "Early Fluent Readers",
              description:
                  "At this stage, reading is more automatic, with more energy devoted to comprehension than word attack. Readers are approaching independence in comprehending text. These readers are experiencing a greater variety of text and are able to recognize different styles and genres. Independence often varies with the type of text being read.",
            ),
            buildText(
              text: "Fluent Readers",
              description:
                  "Readers have successfully moved from “learning to read” to “reading to learn.” Their reading is automatic and is done with expression and proper pauses. Their energy is devoted to understanding, and they have good command and use of the various comprehension strategies. These readers read a wide range of text types and do so independently. They will continue to refine and develop their reading skills as they encounter more difficult reading materials. But for the most part, they are capable of improving their reading skills and selection of materials independently through increased practice.",
            ),
          ],
        ),
      ),
    );
  }

  Column buildText({String text, String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 17.64),
        Text(
          description,
          style: TextStyle(
            fontSize: 14.0,
            color: kdescriptionColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 41.23),
      ],
    );
  }
}
