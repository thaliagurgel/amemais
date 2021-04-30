import 'package:flutter/material.dart';
import 'package:amemais/Screens/anamnese/components/body.dart';

class AnamneseScreen extends StatelessWidget {
  static String routeName = "/anamnese";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
