import 'package:flutter/material.dart';

Widget exemplo4() {
  return const WidgeStatic();
}

class WidgeStatic extends StatelessWidget {
  const WidgeStatic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Stack'),
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
          height: 250,  
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),  
            borderRadius: BorderRadius.circular(5),  
          ),
          child: FotoStack(),
        ),
        SizedBox(height: 10),  
        Container(
          height: 250,  
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 2),  
            borderRadius: BorderRadius.circular(5),  
          ),
          child: SquareStack(),
        ),
      ],
    );
  }
}


class FotoStack extends StatelessWidget {
  const FotoStack({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return Stack(
        children: [
          Container(
           width: 250,
           height: 250,
           color: Colors.white,
          ),

          Container(
           width: 250,
           height: 250,
            child: ClipRRect(
                  borderRadius: BorderRadius.circular(190),
                  child: Image.network(
                  'https://images.pexels.com/photos/11633162/pexels-photo-11633162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', fit: BoxFit.cover,),
                   )
          ),
          Positioned(
            right: 8, 
            top: (250 / 3) * 2,  
            child:Container(
            width: 80,
            height: 25,
            color: Colors.black54,
            child:const Text('Mia mia',style: TextStyle(color: Colors.white),),
            ), 
          )
          

         
       ],
      );
    }
}

class SquareStack extends StatelessWidget {
  const SquareStack({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return Stack(
        children: [
          Container(
           width: 250,
           height: 250,
           color: Colors.blue,
          ),

          Container(
           width: 200,
           height: 200,
           color: Colors.red,
          ),

          Container(
           width: 150,
           height: 150,
           color: Colors.yellow,
          )
       ],
      );
    }
}
