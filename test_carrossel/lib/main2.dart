import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carrossel de Imagens e Textos'),
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
      'url': 'https://via.placeholder.com/400x200.png?text=Imagem+1',
      'text': 'Texto relacionado à Imagem 1'
    },
    {
      'url': 'https://via.placeholder.com/400x200.png?text=Imagem+2',
      'text': 'Texto relacionado à Imagem 2'
    },
    {
      'url': 'https://via.placeholder.com/400x200.png?text=Imagem+3',
      'text': 'Texto relacionado à Imagem 3'
    },
    // Adicione mais itens se desejar
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: imgList.map((item) => Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image.network(item['url']!, fit: BoxFit.cover, width: 1000),
            ),
            Text(item['text']!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      )).toList(),
    );
  }
}
