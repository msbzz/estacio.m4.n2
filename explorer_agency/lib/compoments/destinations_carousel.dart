import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../data/list_destinations.dart';
import 'modal_info.dart';

class DestinationsCarousel extends StatefulWidget {
  const DestinationsCarousel({super.key});
  @override
  _DestinationsCarouselState createState() => _DestinationsCarouselState();
}


class _DestinationsCarouselState extends State<DestinationsCarousel> {
 
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: imgDestinations.map((item) => GestureDetector(
        onTap: () => showModalDestinations(context, item['url']!, item['text']!, item['preco']!),
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(item['url']!, fit: BoxFit.cover, 
                 width: 600,
                 height: 240,
                ),
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
