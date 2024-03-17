import 'package:flutter/material.dart';
import 'package:microatividades/microatividades/layouts_basicos.dart';
import 'package:microatividades/microatividades/widget_list_view.dart';
import 'package:microatividades/microatividades/widget_stack.dart';
import 'package:microatividades/microatividades/widgets_basicos.dart'; 

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => exemplo1())); 
              },
            ),
            ListTile(
              title: const Text('Layouts básicos com os Widgets'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => exemplo2()));
              },
            ),
            ListTile(
              title: const Text('Utilização do Widget ListView'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => exemplo3()));
              },
            ),
             ListTile(
              title: const Text('Utilização do Widget Stack'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => exemplo4()));
              },
            ),            
            // Adicione mais ListTile para cada exemplo
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 100,30,50),
        child: BigTextWidget(),
      ),
    );
  }
}

class BigTextWidget extends StatelessWidget {
  final String longText = "Este aplicativo tem como fim a apresentação" 
     " dos exercicios solicitados "
      " na missão através de menu Drawer ou hamburger acima ";
      

  BigTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          longText,
          style:const  TextStyle(
            fontSize: 18.0,  
            fontWeight: FontWeight.bold,  
            color: Colors.black87,  
            fontStyle: FontStyle.italic, 
           ),
        ),
      ),
    );
  }
}
