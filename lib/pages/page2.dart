import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        children: [
          Text('Registrate',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
          )
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Nombre',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Apellido',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Contraseña',
            ),
          ),
          ElevatedButton(
            child: Text('Registre'),
            style: ElevatedButton.styleFrom(
              primary: Colors.black87,
              // side: BorderSide(color: Colors.yellow, width: 5),
              textStyle: const TextStyle(
                  color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            onPressed: () {},
          ),
        ],
      )

    );
  }

}





