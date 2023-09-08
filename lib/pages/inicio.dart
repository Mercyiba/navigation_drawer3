import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image.asset('images/flr.png',
         width: 200,),
         Text('Autor: Mercy Ibañez'),
         Text('mercedes.ibanez22@itca.edu.sv',
          style: TextStyle(
              color: Colors.green
    ), )
       ],
     )

   );
  }

}