import 'package:flutter/material.dart';
import 'package:flutter_pokemon/models/pokemon_response/pokemon_response.dart';
import 'package:flutter_pokemon/models/pokemon_response/result.dart';

class PokemonItem extends StatelessWidget {

final PokemonResponse pokemonResponse;

// final Result result;


  const PokemonItem({super.key, required this.pokemonResponse});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text(pokemonResponse.name.toString())
        ],
      ),
    );
  }
}