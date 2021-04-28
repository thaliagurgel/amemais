import 'package:amemais/routes.dart';
import 'package:amemais/theme.dart';
import 'package:flutter/material.dart';
import 'package:amemais/Screens/Welcome/welcome_screen.dart';
// import 'package:amemais/constants.dart';
// import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ame+',
      theme: theme(),
      // home: WelcomeScreen(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
