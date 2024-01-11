// ignore: file_names
import 'package:flutter/material.dart';

class RestaurantListItem extends StatelessWidget {
  final String url, nombre, direccion;
  final double valoracionMedia, precioMedio;

  static const letters = TextStyle(color: Colors.black, fontSize: 20);

  const RestaurantListItem(
      {super.key,
      required this.url,
      required this.nombre,
      required this.direccion,
      required this.valoracionMedia,
      required this.precioMedio});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Row(children: <Widget>[
        Image(
          width: 200,
          image: NetworkImage(url),
        ),
        Container(
          padding: const EdgeInsets.only(left: 60, bottom: 50),
          child: Column(children: [
            Text(
              nombre,
              style: letters,
            ),
            Text(direccion, style: letters),
            const Text('------------------'),
            Text('$valoracionMedia €'),
          ]),
        ),
      ]),
    ));
  }
}
