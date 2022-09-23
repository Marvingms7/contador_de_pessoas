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

  runApp(const MaterialApp(title: 'Contador de Pessoas', home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pessoas = 0;
  String _textoModificar = 'Pode Entrar!';
  // ignore: non_constant_identifier_names
  void _contar_pessoas(int delta) {
    setState(() {
      _pessoas += delta;
      if (_pessoas < 0) {
        _textoModificar = 'Mundo invertido?!';
      } else if (_pessoas <= 9) {
        _textoModificar = 'Pode Entrar!';
      } else {
        _textoModificar = 'Lotado!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            Text(
              "Pessoas: $_pessoas",
              style: const TextStyle(
                  color: Color.fromARGB(255, 223, 86, 31),
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                      onPressed: () {
                        _contar_pessoas(-1);
                      },
                      // ignore: prefer_const_constructors
                      child: Text(
                        '-1',
                        style: const TextStyle(
                            fontSize: 40.0,
                            color: Color.fromARGB(255, 223, 86, 31)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                      onPressed: () {
                        _contar_pessoas(1);
                      },
                      // ignore: prefer_const_constructors
                      child: Text(
                        '+1',
                        style: const TextStyle(
                            fontSize: 40.0,
                            color: Color.fromARGB(255, 223, 86, 31)),
                      )),
                )
              ],
            ),
            Text(
              _textoModificar,
              style: const TextStyle(
                color: Color.fromARGB(255, 223, 86, 31),
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}
