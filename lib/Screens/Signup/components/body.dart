import 'package:amemais/components/rounded_password_field_repeat.dart';
import 'package:flutter/material.dart';
import 'package:amemais/Screens/Login/login_screen.dart';
import 'package:amemais/Screens/Signup/components/background.dart';
import 'package:amemais/Screens/Signup/components/or_divider.dart';
import 'package:amemais/Screens/Signup/components/social_icon.dart';
import 'package:amemais/components/already_have_an_account_acheck.dart';
import 'package:amemais/components/rounded_button.dart';
import 'package:amemais/components/rounded_input_field.dart';
import 'package:amemais/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Cadastre-se",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AmeMaisColors.rosa),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/ame_icon.png'),
            ),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              hintText: "Seu E-mail",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Seu Nome",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedPasswordFieldRepeat(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Cadastrar",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
