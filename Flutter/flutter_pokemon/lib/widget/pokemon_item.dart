import 'package:flutter/material.dart';
import 'package:flutter_pokemon/models/pokemon_response/pokemon_response.dart';

class PokemonItem extends StatelessWidget {

final PokemonResponse pokemonResponse;


  const PokemonItem({super.key, required this.pokemonResponse});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(pokemonResponse.sprites!.frontDefault.toString()),
        ],
      ),
    );
  }
}