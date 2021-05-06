import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          Text(
            "Bem vinda ao Ame+ " "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              color: AmeMaisColors.rosa,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 1,
            press: () {}, // ir para tela de notificações
          ),
        ],
      ),
    );
  }
}
