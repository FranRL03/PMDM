import 'package:flutter/material.dart';
import 'package:flutter_navegation/widget/details.dart';

class RentCar extends StatelessWidget {
  static const tittle = TextStyle(fontSize: 20);
  static const subtitle = TextStyle(fontWeight: FontWeight.w200, fontSize: 15);
  static const price =
      TextStyle(color: Colors.blue, fontWeight: FontWeight.w400, fontSize: 20);

  final String nombre, url;

  const RentCar({super.key, required this.nombre, required this.url});
    // const Details({Key? key, required this.nombre, required this.url})
    //   : super(key: key);


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
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(url),
                    ),
                  )),
            ),
            Text(
              nombre,
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Details(nombre: nombre, url: url,)),
                  );
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(50, 50)), // Tamaño del botón
                ),
                child: const Text(
                  'Detalles',
                  style: price,
                ),
              ),
            ])
          ]),
        ),
      ),
    );
  }
}
