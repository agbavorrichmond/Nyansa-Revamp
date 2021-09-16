import 'package:flutter/material.dart';
import 'package:nyansa/components/searchButton.dart';
import 'package:nyansa/book_details.dart';
import 'package:nyansa/screens/mainBottomBar.dart';

class HomeScreen extends StatelessWidget {

  static const routeName = 'home';

  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 36.4, 15.0, 0.0),
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xFF3F3F3F),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "James",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Color(0xFF3F3F3F),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 34.31,
                      width: 130,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFF8E089), Color(0xFFDAAE10)]),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.point_of_sale,
                            color: Colors.white,
                            size: 16,
                          ),
                          Text(
                            "300 Gold Points",
                            // ignore: deprecated_member_use
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18.46),
                SearchButton(),
              ],
            ),
            Flexible(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 1.68,
                    maxWidth: double.infinity,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: GestureDetector(
                          onTap: () {
                            return Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => Details()));
                          },
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                height: 225,
                                width: 154,
                                child: Image.asset(
                                    "assets/images/jungle_book.jpg"),
                              ),
                              SizedBox(width: 18),
                              Container(
                                height: 225,
                                width: 154,
                                child: Image.asset(
                                    "assets/images/charlotte's_web.jpg"),
                              ),
                              SizedBox(width: 18),
                              Container(
                                height: 225,
                                width: 154,
                                child:
                                    Image.asset("assets/images/jungle_book.jpg"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 13.68),
                      Flexible(
                        child: Text(
                          "Animals",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF3F3F3F),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Flexible(
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 225,
                              width: 154,
                              child:
                                  Image.asset("assets/images/jungle_book.jpg"),
                            ),
                            SizedBox(width: 18),
                            Container(
                              height: 225,
                              width: 154,
                              child: Image.asset(
                                  "assets/images/charlotte's_web.jpg"),
                            ),
                            SizedBox(width: 18),
                            Container(
                              height: 225,
                              width: 154,
                              child:
                                  Image.asset("assets/images/jungle_book.jpg"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13.68),
                      Flexible(
                        child: Text(
                          "Animals",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF3F3F3F),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Flexible(
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 225,
                              width: 154,
                              child:
                                  Image.asset("assets/images/jungle_book.jpg"),
                            ),
                            SizedBox(width: 18),
                            Container(
                              height: 225,
                              width: 154,
                              child: Image.asset(
                                  "assets/images/charlotte's_web.jpg"),
                            ),
                            SizedBox(width: 18),
                            Container(
                              height: 225,
                              width: 154,
                              child:
                                  Image.asset("assets/images/jungle_book.jpg"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class Home extends StatelessWidget {
//   const Home({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(15.0, 36.4, 15.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Hello",
//                             style: TextStyle(
//                               fontSize: 16.0,
//                               color: Color(0xFF3F3F3F),
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           Text(
//                             "James",
//                             style: TextStyle(
//                               fontSize: 24.0,
//                               color: Color(0xFF3F3F3F),
//                               fontWeight: FontWeight.w800,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Container(
//                         height: 34.31,
//                         width: 100,
//                         decoration: BoxDecoration(
//                           color: Colors.red,
//                           gradient: LinearGradient(
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                               colors: [Color(0xFFF8E089), Color(0xFFDAAE10)]),
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 18.46),
//                   TextField(
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Color(0xFFE5E5E5),
//                       hintText: "Look For Books",
//                       prefixIcon: Icon(Icons.search),
//                       suffixIcon: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: CircleAvatar(
//                           backgroundColor: Color(0xFF00ACA8),
//                           child: Icon(
//                             Icons.mic,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5.0),
//                           borderSide: BorderSide.none),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints(maxHeight: 400),
//                 child: ListView(
//                   shrinkWrap: true,
//                   children: [
//                     Flexible(
//                       child: ListView(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         physics: BouncingScrollPhysics(),
//                         children: [
//                           Container(
//                             height: 225,
//                             width: 154,
//                             child: Image.asset("assets/images/jungle_book.jpg"),
//                           ),
//                           SizedBox(width: 18),
//                           Container(
//                             height: 225,
//                             width: 154,
//                             child: Image.asset(
//                                 "assets/images/charlotte's_web.jpg"),
//                           ),
//                           SizedBox(width: 18),
//                           Container(
//                             height: 225,
//                             width: 154,
//                             child: Image.asset("assets/images/jungle_book.jpg"),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Text(
//                       "Animals",
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         color: Color(0xFF3F3F3F),
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                     Flexible(
//                       child: ListView(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.horizontal,
//                         physics: BouncingScrollPhysics(),
//                         children: [
//                           Container(
//                             height: 225,
//                             width: 154,
//                             child: Image.asset("assets/images/jungle_book.jpg"),
//                           ),
//                           SizedBox(width: 18),
//                           Container(
//                             height: 225,
//                             width: 154,
//                             child: Image.asset(
//                                 "assets/images/charlotte's_web.jpg"),
//                           ),
//                           SizedBox(width: 18),
//                           Container(
//                             height: 225,
//                             width: 154,
//                             child: Image.asset("assets/images/jungle_book.jpg"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Spacer(
//             //   flex: 1,
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
