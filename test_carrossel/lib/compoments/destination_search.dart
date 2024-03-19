import 'package:flutter/material.dart';
import 'modal_info.dart'; // Certifique-se de que este import está correto
import '../data/list_destinations.dart'; // Certifique-se de que este import está correto

class DestinationSearchWidget extends StatefulWidget {
  const DestinationSearchWidget({Key? key}) : super(key: key);

  @override
  _DestinationSearchWidgetState createState() => _DestinationSearchWidgetState();
}

class _DestinationSearchWidgetState extends State<DestinationSearchWidget> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> _searchResults = [];

  void _searchDestination(String query) {
    final results = imgDestinations.where((destination) {
      final destinationText = destination['text']!.toLowerCase();
      final input = query.toLowerCase();

      return destinationText.contains(input);
    }).toList();

    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Procure seu destino',
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min, // Importante para manter os ícones dentro do espaço disponível
                children: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () => _searchDestination(_controller.text),
                  ),
                  if (_controller.text.isNotEmpty)
                    IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _controller.clear();
                        _searchDestination('');
                        _searchResults = [];
                      },
                    ),
                ],
              ),
            ),
            onChanged: (value) => _searchDestination(value),
          ),
        ),
        Container(
          height: 300, // Defina uma altura fixa para o container da lista
          child: ListView.builder(
            itemCount: _searchResults.length,
            itemBuilder: (context, index) {
              final item = _searchResults[index];
              return ListTile(
                title: Text(item['text']!),
                subtitle: Text(item['preco']!),
                onTap: () => showModalDestinations(
                  context,
                  item['url']!,
                  item['text']!,
                  item['preco']!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
