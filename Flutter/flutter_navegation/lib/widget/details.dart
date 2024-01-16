import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String nombre, url;

  const Details({super.key, required this.nombre, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              nombre,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
                child: Container()), // Para empujar los elementos hacia arriba
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(50, 50)),
              ),
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
