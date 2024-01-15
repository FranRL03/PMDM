import 'package:flutter/material.dart';

class Marcador extends StatefulWidget {
  const Marcador({super.key});

  @override
  State<Marcador> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Marcador> {
  int _contadorLocal = 0;
  int _contadorVisitante = 0;

  void _simplesLocal() {
    setState(() {
      _contadorLocal++;
    });
  }

  void _doblesLocal() {
    setState(() {
      _contadorLocal +=2;
    });
  }

  void _triplesLocal() {
    setState(() {
      _contadorLocal+=3;
    });
  }

  void _simplesVisitante() {
    setState(() {
      _contadorVisitante++;
    });
  }

  void _doblesVisitante() {
    setState(() {
      _contadorVisitante +=2;
    });
  }

  void _triplesVisitante() {
    setState(() {
      _contadorVisitante+=3;
    });
  }


  static const title = TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 240,
        child: Card(
          margin: const EdgeInsets.all(15),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Center(
                  child: Text('Local - Visitante', style: title),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Text('$_contadorLocal', style: title),
                    ),
                    Text('$_contadorVisitante', style: title),
                  ],
                ),
                Row(
                  children: [
                    FloatingActionButton(
                      onPressed: _simplesLocal, mini: true, // Botón más pequeño
                      child: const Text('+1'),
                    ),
                    Column(
                      children: [
                        FloatingActionButton(
                          onPressed: _doblesLocal, mini: true, // Botón más pequeño
                          child: const Text('+2'),
                        ),
                        FloatingActionButton(
                          onPressed: _triplesLocal, mini: true, // Botón más pequeño
                          child: const Text('+3'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: FloatingActionButton(
                        onPressed: _simplesVisitante,
                        mini: true, // Botón más pequeño
                        child: const Text('+1'),
                      ),
                    ),
                    Column(
                      children: [
                        FloatingActionButton(
                          onPressed: _doblesVisitante, mini: true, // Botón más pequeño
                          child: const Text('+2'),
                        ),
                        FloatingActionButton(
                          onPressed: _triplesVisitante, mini: true, // Botón más pequeño
                          child: const Text('+3'),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
