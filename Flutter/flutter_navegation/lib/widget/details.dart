import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text('List of Details'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                  const Size(50, 50)), // Tamaño del botón
            ),
            child: const Text(
              'Volver',
            ),
          ),
        ],
      ),
    );
  }
}
