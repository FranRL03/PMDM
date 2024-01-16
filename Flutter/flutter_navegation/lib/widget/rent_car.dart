import 'package:flutter/material.dart';

class RentCar extends StatelessWidget {
  static const tittle = TextStyle(fontSize: 20);
  static const subtitle = TextStyle(fontWeight: FontWeight.w200, fontSize: 15);
  static const price =
      TextStyle(color: Colors.blue, fontWeight: FontWeight.w400, fontSize: 20);

  const RentCar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Card(
        margin: const EdgeInsets.all(15),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://assets.stickpng.com/thumbs/59db69d33752880e93e16efc.png'),
                    ),
                  )),
            ),
            const Text(
              'Rayo McQueen',
              style: tittle,
            ),
            const Text(
              '2-3 puertas · Mustang',
              style: subtitle,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.hdr_auto,
                    size: 20,
                  ),
                  Text('Aut.'),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.ac_unit,
                      size: 20,
                    ),
                  ),
                  Text('A/A'),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.person,
                      size: 20,
                    ),
                  ),
                  Text('2'),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.luggage,
                      size: 20,
                    ),
                  ),
                  Text('1')
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Divider(),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                '35.000€',
                style: price,
              ),
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(50, 50)), // Tamaño del botón
                ),
                child: const Text(
                  'Detalles',
                  style: price,
                ),
              ),
              // Text(
              //   'Detalles',
              //   style: price,
              // )
            ])
          ]),
        ),
      ),
    );
  }
}
