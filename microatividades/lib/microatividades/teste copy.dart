import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 

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
        body: MyLayoutSection(),
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

class MyLayoutSection extends StatelessWidget{
  const MyLayoutSection({super.key});
  Widget build(BuildContext context){
    //final Color color = Theme.of(context).primaryColor;
    return const Row(
      children: [
       Padding(padding: EdgeInsets.all(32),
       child: ButtonFone(),
       ), 
       ButtonSection(),
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}


class ButtonFone extends StatelessWidget {
  const ButtonFone({super.key});
   @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.call, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            'CALL',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
 

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
 