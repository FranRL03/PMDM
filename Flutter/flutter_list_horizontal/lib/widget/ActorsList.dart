import 'package:flutter/material.dart';

class ActorsList extends StatelessWidget {
  final String name, apellido, url;

  const ActorsList(
      {super.key,
      required this.name,
      required this.apellido,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, right: 20),
        child: Column(children: [
          Container(
              width: 150,
              height: 350,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(800), // Controla la curvatura superior
                  bottom:
                      Radius.circular(800), // Controla la curvatura inferior
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url),
                ),
              )),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 35),
            ),
            Text(
              apellido,
              style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 17),
            ),
          ]),
        ]),
      ),
    );
  }
}
