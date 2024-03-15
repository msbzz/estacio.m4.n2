import 'package:flutter/material.dart';
import 'package:microatividades/microatividades/widgets_basicos.dart'; // Certifique-se de que este caminho está correto

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Exemplos de Widgets',
      home: PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Missão Prática - N2'),
        backgroundColor: const Color(0xff2196F3), 
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Microatividades'),
            ),
            ListTile(
              title: const Text('Widgets Flutter Básicos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => exemplo1())); // Certifique-se de que 'exemplo1' está definido corretamente
              },
            ),
            // Adicione mais ListTile para cada exemplo
          ],
        ),
      ),
      body:  Center(
        child: BigTextWidget(),
      ),
    );
  }
}

class BigTextWidget extends StatelessWidget {
  final String longText = "Este aplicativo tem como fim a apresentação "
      "dos exemplos solicitados na missão sendo assim optei pela possibilidade "
      "de acioná-los via menu Drawer.";

  BigTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          longText,
          style:const  TextStyle(
            fontSize: 18.0, // Tamanho da fonte
            fontWeight: FontWeight.bold, // Peso da fonte
            color: Colors.black87, // Cor do texto
            fontStyle: FontStyle.italic, // Estilo da fonte
            // Outras propriedades de estilo podem ser adicionadas aqui
          ),
        ),
      ),
    );
  }
}
