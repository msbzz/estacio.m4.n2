import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carrossel com Modal'),
        ),
        body: ImageTextCarousel(),
      ),
    );
  }
}

class ImageTextCarousel extends StatefulWidget {
  @override
  _ImageTextCarouselState createState() => _ImageTextCarouselState();
}

class _ImageTextCarouselState extends State<ImageTextCarousel> {
  final List<Map<String, String>> imgList = [
    {
      'url': 'https://images.unsplash.com/photo-1551963831-b3b1ca40c98e',
      'text': 'Delicioso café da manhã com ovos'
    },
    {
      'url': 'https://images.unsplash.com/photo-1551782450-a2132b4ba21d',
      'text': 'Um mundo em uma lente'
    },
    {
      'url': 'https://images.unsplash.com/photo-1522770179533-24471fcdba45',
      'text': 'Aventura em montanhas nevadas'
    },
    // Adicione mais itens se desejar
  ];

void _showModalBottomSheet(BuildContext context, String imageUrl, String imageText) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Permite que o modal seja ajustado para menos da metade da tela
    builder: (BuildContext bc) {
      return FractionallySizedBox(
        heightFactor: 0.7, // Ocupa 70% da altura da tela, ajuste conforme necessário
        child: Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Detalhes da Imagem'),
                  onTap: () => {}),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(imageUrl, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(imageText, style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: imgList.map((item) => GestureDetector(
        onTap: () => _showModalBottomSheet(context, item['url']!, item['text']!),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.network(item['url']!, fit: BoxFit.cover, width: 1000),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(item['text']!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      )).toList(),
    );
  }
}
