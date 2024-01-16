import 'package:flutter/material.dart';
import 'package:flutter_navegation/widget/rent_car.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView(
            children: const [RentCar(), RentCar(), RentCar(), RentCar()]),
      ),
    );
  }
}
