import 'package:flutter/material.dart';
import 'package:flutter_card_vuelo/widget/vuelo-lis-item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: ListView(children: const [
          VueloListItem(),
          VueloListItem(),
          VueloListItem(),
          VueloListItem()
        ]),
      ),
    );
  }
}
