import 'package:flutter/material.dart';
import 'package:flutter_pokemon/widget/pokemon_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.only(top: 40),
        child:
          PokemonWidget()
      ),
    );
  }
}
