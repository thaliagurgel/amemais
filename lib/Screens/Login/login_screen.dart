import 'package:flutter/material.dart';
import 'package:amemais/Screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
