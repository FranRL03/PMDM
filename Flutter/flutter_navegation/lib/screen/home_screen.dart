import 'package:flutter/material.dart';
import 'package:flutter_navegation/widget/rent_car.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView(children: const [
          RentCar(
            nombre: 'Rayo McQueen',
            url:
                'https://assets.stickpng.com/thumbs/59db69d33752880e93e16efc.png',
          ),
          RentCar(
            nombre: 'Mate',
            url:
                'https://assets.stickpng.com/thumbs/59db69ab3752880e93e16ef8.png',
          ),
          RentCar(
            nombre: 'El Rey',
            url:
                'https://assets.stickpng.com/thumbs/59db69ed3752880e93e16efd.png',
          ),
          RentCar(
            nombre: 'Hudson',
            url:
                'https://assets.stickpng.com/thumbs/59db6a303752880e93e16f02.png',
          ),
        ]),
      ),
    );
  }
}
