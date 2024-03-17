import 'package:flutter/material.dart';

 Widget exemplo2() {
  return const StatelessWidgetExemplo("Basic Layout");
}

class StatelessWidgetExemplo extends StatelessWidget {
  final String _appBarTitle;

  const StatelessWidgetExemplo(this._appBarTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        backgroundColor: const Color(0xff2196F3), 
        titleTextStyle: const TextStyle(
          color: Colors.white, 
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
             if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body:const Padding(padding:  EdgeInsets.fromLTRB(10, 100,30,50),
      child: MyLayoutSection() ,) 
      
       
    );
  }
}


class MyLayoutSection extends StatelessWidget {
  const MyLayoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,  
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),  
          child: ButtonFone(),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16),  
          child: ButtonSection(),
        ),
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Container(
      padding: const EdgeInsets.all(8),  
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 2),  
        borderRadius: BorderRadius.circular(8),  
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonFone extends StatelessWidget {
  const ButtonFone({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 48,
          height: 48,
          child: Icon(Icons.call, color: color, size: 24),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            'CALL',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 48,
          height: 48,
          child: Icon(icon, color: color, size: 24),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

