import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carrossel de Imagens'),
        ),
        body: ImageCarousel(),
      ),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final List<String> imgList = [
    'https://via.placeholder.com/400x200.png?text=Imagem+1',
    'https://via.placeholder.com/400x200.png?text=Imagem+2',
    'https://via.placeholder.com/400x200.png?text=Imagem+3',
    // Adicione mais imagens se desejar
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
        child: Center(
          child: Image.network(item, fit: BoxFit.cover, width: 1000)
        ),
      )).toList(),
    );
  }
}
