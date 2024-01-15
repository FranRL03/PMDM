import 'package:flutter/material.dart';
import 'package:flutter_stateful_widget/widget/marcador.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  Color _backgroundColor = Colors.white;

  void _changeColor() {
    setState(() {
      // Genera aleatoriamente un nuevo color
      if (_backgroundColor == Colors.white) {
        _backgroundColor = Colors.black;
      } else {
        _backgroundColor = Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: _backgroundColor, // Usar el color de fondo actual
        child: ListView(children: [
          SizedBox(
            width: 100,
            child: ElevatedButton(
              onPressed: _changeColor,
              child: const Text('Cambiar color'),
            ),
          ),
          const Marcador()
        ]),
      ),
    );
  }
}
