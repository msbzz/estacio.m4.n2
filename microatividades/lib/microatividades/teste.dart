import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Texto com Scrollbar'),
        ),
        body: MyScrollableTextWidget(),
      ),
    );
  }
}

class MyScrollableTextWidget extends StatelessWidget {
  final String longText = "Aqui vai um texto muito longo que você quer que seja "
      "rolável. Imagine que este texto é suficientemente longo para não caber "
      "na tela de uma só vez, o que torna necessário o uso de um scrollbar para "
      "que os usuários possam ler todo o conteúdo. "
      "Repita este texto várias vezes para garantir que ele seja realmente longo "
      "e exceda a altura da tela. "
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod "
      "tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, "
      "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo "
      "consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse "
      "cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non "
      "proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(longText),
      ),
    );
  }
}

