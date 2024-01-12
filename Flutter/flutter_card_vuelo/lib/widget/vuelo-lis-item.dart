import 'package:flutter/material.dart';

class VueloListItem extends StatelessWidget {
  static const tittle = TextStyle(fontSize: 20);
  static const subtitle = TextStyle(fontWeight: FontWeight.w200, fontSize: 15);

  const VueloListItem({super.key});

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
              const Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '20:55',
                        style: tittle,
                      ),
                      Text(
                        'Salida',
                        style: subtitle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              // color: Theme.of(context).colorScheme.outline,
                              ),
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        child: SizedBox(
                            width: 60,
                            height: 30,
                            child: Center(child: Text('MAD', style: tittle)))),
                  ),
                  Text('Madrid', style: tittle)
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://grupo.iberia.com/contents/archives/475/109/images/thumb255x185_auto/iberia_47510965352123_thumb.png'),
                          ),
                        )),
                  ),
                  const Text('Iberia 7448', style: subtitle),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100),
                child: Text(
                  'Duración 2h 10m',
                  style: subtitle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('22:05', style: tittle),
                        Text('Llegada', style: subtitle),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                // color: Theme.of(context).colorScheme.outline,
                                ),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: SizedBox(
                              width: 60,
                              height: 30,
                              child:
                                  Center(child: Text('LHR', style: tittle)))),
                    ),
                    Text('Londres', style: tittle)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
