import 'package:amemais/Screens/sobre_bebe/sobre_bebe_screen.dart';
import 'package:amemais/components/rounded_button.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:amemais/components/custom_surfix_icon.dart';
import 'package:amemais/components/default_button.dart';
import 'package:amemais/components/form_error.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SobreAleitamentoForm extends StatefulWidget {
  @override
  _SobreAleitamentoFormState createState() => _SobreAleitamentoFormState();
}

class _SobreAleitamentoFormState extends State<SobreAleitamentoForm> {
  bool value = false;
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  // String amamentou; //ok
  // String tempo; //
  // String dificuldade; //ok
  // String quaisDificuldades; //ok
  // String isAmamentando; //ok
  // String ofertando; //ok
  // String producao; //ok
// ja amamentou
  String selectAmamentou = "";
  final amamentouSelected = TextEditingController();
  List<String> amamentou = [
    "Sim",
    "Não",
  ];
  //tempo
  String selectTempo = "";
  final tempoSelected = TextEditingController();
  List<String> tempo = [
    "Até 30 dias",
    "2 meses",
    "3 meses",
    "4 meses",
    "5 meses",
    "6 meses",
    "7 meses",
    "8 meses",
    "9 meses",
    "10 meses",
    "11 meses",
    "1 ano",
    "2 anos ou mais"
  ];

  // Sentiu Dificuldade?
  String selectDificuldade = "";
  final dificuldadeSelected = TextEditingController();
  List<String> dificuldade = [
    "Sim",
    "Não",
  ];
  // Está amamentando?
  String selectIsAmamentando = "";
  final isAmamentandoSelected = TextEditingController();
  List<String> amamentando = [
    "Sim",
    "Não",
  ];
// Quais Dificuldades
  String selectQuaisDificuldades = "";
  final quaisDificuldadesSelected = TextEditingController();
  List<String> quaisDificuldades = [
    "Baixa produção de leite",
    "Dor ao amamentar",
    "Complicações Mamárias",
    "Pouco Apoio Familiar",
    "Pega Incorreta do Bebê"
  ];

  //Oferta algo além do leite?
  String selectOferta = "";
  final ofertaSelected = TextEditingController();
  List<String> oferta = [
    "Não. apenas o leite",
    "Sim, água, chás ou suco",
    "Sim, complemento com Fórmula",
    "Sim, o leite não é o principal alimento"
  ];
  //Se o Bebê mamou
  String selectIfMamou = "";
  final ifMamouSelected = TextEditingController();
  List<String> mamou = [
    "Sim",
    "Não",
  ];
  //Tem boa Produção de leite?
  String selectProducao = "";
  final producaoSelected = TextEditingController();
  List<String> producao = [
    "Sim",
    "Não",
  ];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildAmamentouField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildTempoField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildDificuldadeField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildQuaisDificuldadesField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildIsAmamentandoField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildOfertaField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildProducaoField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          RoundedButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, SobreOBebeScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  DropDownField buildAmamentouField() {
    return DropDownField(
      controller: amamentouSelected,
      hintText: "Já amamentou?",
      enabled: true,
      required: true,
      itemsVisibleInDropdown: 5,
      items: amamentou,
      onValueChanged: (value) {
        setState(() {
          selectAmamentou = value;
        });
      },
    );
  }

  DropDownField buildTempoField() {
    return DropDownField(
      controller: tempoSelected,
      hintText: "Por Quanto tempo?",
      enabled: true,
      required: true,
      itemsVisibleInDropdown: 5,
      items: tempo,
      onValueChanged: (value) {
        setState(() {
          selectTempo = value;
        });
      },
    );
  }

  DropDownField buildDificuldadeField() {
    return DropDownField(
      controller: dificuldadeSelected,
      hintText: "Sentiu Dificuldade?",
      enabled: true,
      required: true,
      itemsVisibleInDropdown: 5,
      items: dificuldade,
      onValueChanged: (value) {
        setState(() {
          selectDificuldade = value;
        });
      },
    );
  }

  DropDownField buildQuaisDificuldadesField() {
    return DropDownField(
      controller: quaisDificuldadesSelected,
      hintText: "Quais?",
      enabled: true,
      //required: true,
      itemsVisibleInDropdown: 5,
      items: quaisDificuldades,
      onValueChanged: (value) {
        setState(() {
          selectQuaisDificuldades = value;
        });
      },
    );
  }

  DropDownField buildIsAmamentandoField() {
    return DropDownField(
      controller: isAmamentandoSelected,
      hintText: "Está amamentando?",
      enabled: true,
      required: true,
      itemsVisibleInDropdown: 3,
      items: amamentando,
      onValueChanged: (value) {
        setState(() {
          selectIsAmamentando = value;
        });
      },
    );
  }

  DropDownField buildOfertaField() {
    return DropDownField(
      controller: ofertaSelected,
      hintText: "Oferta Algo Além do Leite?",
      enabled: true,
      required: true,
      itemsVisibleInDropdown: 3,
      items: oferta,
      onValueChanged: (value) {
        setState(() {
          selectOferta = value;
        });
      },
    );
  }

  DropDownField buildProducaoField() {
    return DropDownField(
      controller: producaoSelected,
      hintText: "Boa produção de Leite?",
      enabled: true,
      required: true,
      itemsVisibleInDropdown: 3,
      items: producao,
      onValueChanged: (value) {
        setState(() {
          selectProducao = value;
        });
      },
    );
  }
}
