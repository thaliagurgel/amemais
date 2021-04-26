import 'package:flutter/material.dart';
import 'package:amemais/Screens/Login/components/background.dart';
import 'package:amemais/Screens/Signup/signup_screen.dart';
import 'package:amemais/components/already_have_an_account_acheck.dart';
import 'package:amemais/components/rounded_button.dart';
import 'package:amemais/components/rounded_input_field.dart';
import 'package:amemais/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AmeMaisColors.rosa),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/ame_icon.png'),
            ),
            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.35,
            // ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Seu Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Login",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
