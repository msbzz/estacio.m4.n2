import 'package:flutter/material.dart';

Widget exemplo3() {
  return const WidgetListView();
}

class WidgetListView extends StatelessWidget {
  const WidgetListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      const Text('Widget ListView'),
      backgroundColor: const Color(0xff2196F3), 
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
        )
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,  
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),  
            borderRadius: BorderRadius.circular(5),  
          ),
          child: UniqueItemList(),
        ),
        SizedBox(height: 10),  
        Container(
          height: 300,  
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),  
            borderRadius: BorderRadius.circular(5),  
          ),
          child: SimpleList(),
        ),
      ],
    );
  }
}

class UniqueItemList extends StatelessWidget {
  const UniqueItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),  
      children: const [
        ListTile(
          title: Text('Flutter'),
          subtitle: Text('Tudo é um widget'),
          leading: Icon(Icons.flash_on),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}

class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),  
      children: const [
        ListTile(
          title: Text('Flutter'),
          subtitle: Text('Tudo é um widget'),
          leading: Icon(Icons.flash_on),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text('Dart'),
          subtitle: Text('É fácil'),
          leading: Icon(Icons.mood),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          title: Text('Firebase'),
          subtitle: Text('Combina com Flutter'),
          leading: Icon(Icons.whatshot),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}
