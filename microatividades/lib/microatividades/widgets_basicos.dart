import 'package:flutter/material.dart';

// Corrigido para retornar um Widget diretamente, sem chamar runApp.
Widget exemplo1() {
  // Retorna diretamente o widget da página.
  return const StatelessWidgetExemplo("Olá Flutter - MaterialApp");
}

class StatelessWidgetExemplo extends StatelessWidget {
  final String _appBarTitle;

  const StatelessWidgetExemplo(this._appBarTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Verifica se pode voltar antes de chamar o pop
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: const Center(
        child: Text('Macoratti .net'),
      ),
    );
  }
}
