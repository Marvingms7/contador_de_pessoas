import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Contador de Pessoas',
      home: Stack(
        children: [
          Image.asset(
            'images/restaurante.jpg',
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Pessoas: 500",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                        onPressed: () {},
                        // ignore: prefer_const_constructors
                        child: Text(
                          '-1',
                          style: const TextStyle(
                              fontSize: 40.0, color: Colors.purple),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                        onPressed: () {},
                        // ignore: prefer_const_constructors
                        child: Text(
                          '+1',
                          style: const TextStyle(
                              fontSize: 40.0, color: Colors.purple),
                        )),
                  )
                ],
              ),
              const Text(
                "Pode Entrar!!",
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0,
                ),
              ),
            ],
          )
        ],
      )));
}
