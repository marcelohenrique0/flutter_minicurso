import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Minha Soma é: $contador',
            style: TextStyle(
              fontSize: 50,
              color: Colors.green,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador--;
              });
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador++;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
