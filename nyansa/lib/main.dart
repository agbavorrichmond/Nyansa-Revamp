import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nyansa/screens/book_opened_screen.dart';
import 'package:nyansa/screens/create_account/createAccount.dart';
import 'package:nyansa/screens/create_account/hand_off_screen.dart';
import 'package:nyansa/screens/create_account/pin_screen.dart';
import 'package:nyansa/screens/create_account/ward_age.dart';
import 'package:nyansa/screens/home_screen.dart';
import 'package:nyansa/screens/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nyansa App',
      theme: ThemeData(
        primaryColor: Colors.cyan,
        shadowColor: Colors.transparent,
        // inputDecorationTheme: InputDecorationTheme(focusColor: Colors.black),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.white),
        ),
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            bodyText1: TextStyle(fontFamily: "Nunito"),
            bodyText2: TextStyle(fontFamily: "Nunito"),
          ),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: "Nunito"),
          bodyText2: TextStyle(fontFamily: "Nunito"),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: <String, WidgetBuilder>{
        WardAge.routeName: (context) => WardAge(),
        SplashScreen.routeName: (context) => SplashScreen(),
        CreateAccount.routeName: (context) => CreateAccount(),
        PinScreen.routeName: (context) => PinScreen(),
        HandOffScreen.routeName: (context) => HandOffScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        BookOpenedScreen.routeName: (context) => BookOpenedScreen(),
      },
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: (RouteSettings settings){
        return null;
      },
      onUnknownRoute: (RouteSettings settings){
        return null;
      },
    );
  }
}
