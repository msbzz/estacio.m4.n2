import 'package:flutter/material.dart';

 
Widget exemplo1() {
   
  return const StatelessWidgetExemplo("MaterialApp,Scaffold e AppBar");
}

class StatelessWidgetExemplo extends StatelessWidget {
  final String _appBarTitle;

  const StatelessWidgetExemplo(this._appBarTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        backgroundColor: const Color(0xff2196F3), 
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
             
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: const Center(
        child: Text('Bom Dia Estácio, aqui esta o exemplo de uso dos widgets basicos baseado na especificação',style: TextStyle(color: Colors.green,
        fontWeight:FontWeight.w700,
        fontSize: 20,
         ),textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
