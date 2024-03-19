import 'package:flutter/material.dart';

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
        mainAxisSize: MainAxisSize.min, // Ajusta o tamanho da coluna ao conteúdo
        children: [
          // Wrap the image in a ClipRRect to clip the overflowing parts
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: Image.asset(imageUrl, fit: BoxFit.cover),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  imageText, // Usando o parâmetro `imageUrl`
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Oferta Imbatível - Economize R\$525',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(Icons.calendar_today),
                    const SizedBox(width: 8),
                    Text('5 dias/4 noites'),
                    const SizedBox(width: 16),
                    const Icon(Icons.flight),
                    const SizedBox(width: 8),
                    Text('Saindo de Brasília'),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.hotel),
                    const SizedBox(width: 8),
                    Text('Hotel + Aéreo'),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      preco, // Usando o parâmetro `preco`
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
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