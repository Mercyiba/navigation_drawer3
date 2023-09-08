import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool valor = false;
  //oC = (oF - 32) * 5 / 9
  TextEditingController _gradosf = TextEditingController();
  double _resultado = 0.0;
  double  dato = 0.0;
  String _mensaje = "";
  bool _validar = false;

  void _convert() {
    setState(() {
      if(_gradosf.text.toString() == "") {
        _mensaje = "campo obligatorio";
        _validar = true;
        _resultado = 0.0;
        return;
      }
      dato = double.parse(_gradosf.text.toString());
      _resultado = (dato - 32) * 5 / 9;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: [
          Text('Conversion de oF a oC',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )
      ),
      Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: TextField(
            keyboardType: TextInputType.number,
            obscureText: false,
            maxLength: 3,
            controller: _gradosf,
            decoration: InputDecoration(
            labelText: 'oF',
            hintText: 'Digite la temperatura oF',
            icon: Icon(Icons.arrow_forward_ios,
                color: Colors.red), //Icon
          ), //InputDecoration
      ),
    ),
    Text('${_resultado.toStringAsFixed(2)}',
    style: TextStyle(
    fontSize: 50,
    color: Colors.grey
    ),
    ),
    ElevatedButton(
    onPressed: (){},
    child: Text('calcular')) //ElevatedButton
    ]
    ,
    )
    );
  }
}