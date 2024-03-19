import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart'; // Import for rating bar

class ShowModalDestinations extends StatelessWidget {
  final String imageUrl;
  final String imageText;
  final String preco;

  const ShowModalDestinations({
    Key? key,
    this.imageUrl = 'assets/images/rio_de_janeiro.jpg', // Valor padrão
    this.imageText = 'Pacote Rio de Janeiro - 5 dias/4 noites', // Valor padrão
    this.preco = 'R\$1.283', // Valor padrão
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          // ClipRRect for image with adjusted borderRadius
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: Image.asset(imageUrl, height: 250,width: 350, fit: BoxFit.cover), // Reduced image height
          ),
          Expanded(
            // Wrap remaining content in Padding with reduced bottom padding
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    imageText,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Oferta Imbatível - Economize R\$525',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(width: 8),
                      Text('5 dias/4 noites'),
                      SizedBox(width: 16),
                      Icon(Icons.flight),
                      SizedBox(width: 8),
                      Text('Saindo de Brasília'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.hotel),
                      SizedBox(width: 8),
                      Text('Hotel + Aéreo'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(children: [
                    const Padding(padding: EdgeInsets.fromLTRB(5, 5, 20, 10),
                    child:Text('Cotação')
                    ),
                    RatingBar.builder(
                    initialRating: 3, // You can set an initial rating if desired
                    minRating: 1,
                    itemCount: 5,
                    itemSize:25,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) => print(rating),
                  ),
                  ],),
                  
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        preco,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '(por pessoa)',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Ver Detalhes'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showModalDestinations(BuildContext context, String imageUrl, String imageText, String preco) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext bc) {
      return FractionallySizedBox(
        heightFactor: 0.7, // Ajuste conforme necessário
        child: ShowModalDestinations(
          imageUrl: imageUrl,
          imageText: imageText,
          preco: preco,
        ),
      );
    },
  );
}