// lib/modal_bottom_sheet.dart
import 'package:flutter/material.dart';

void showModalDestinations(BuildContext context, String imageUrl, String imageText,String preco) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Permite que o modal seja ajustado para menos da metade da tela
    builder: (BuildContext bc) {
      return Stack(children:[
      FractionallySizedBox(
        heightFactor: 0.7, // Ocupa 70% da altura da tela, ajuste conforme necessário
        child: Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.image),
                  title: const Text('Destino'),
                  onTap: () => {}),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child : Container (
                  width: 500,
                  height: 240,
                  child: Image.asset(imageUrl, fit: BoxFit.cover),
                ), 
                
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(imageText, style:const TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(preco, style: const TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ) 
      ]); 

    },
  );
}
