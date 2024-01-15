import 'package:flutter/material.dart';

class Marcador extends StatefulWidget {
  const Marcador({super.key});

  @override
  State<Marcador> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Marcador> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 240,
        child: Card(
          margin: EdgeInsets.all(15),
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Local - Visitante'),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
