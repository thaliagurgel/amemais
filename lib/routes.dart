// import 'package:import_js_library/import_js_library.dart';
// import 'dart:js';
// import 'dart:js';
import 'package:amemais/Screens/Login/login_screen.dart';
import 'package:amemais/Screens/Signup/signup_screen.dart';
import 'package:amemais/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/widgets.dart';
// import 'package:shop_app/screens/cart/cart_screen.dart';
// import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
// import 'package:shop_app/screens/details/details_screen.dart';
import 'package:amemais/Screens/forgot_password/forgot_password_screen.dart';
// import 'package:shop_app/screens/home/home_screen.dart';
// import 'package:shop_app/screens/login_success/login_success_screen.dart';
// import 'package:shop_app/screens/otp/otp_screen.dart';
// import 'package:shop_app/screens/profile/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
