import 'package:flutter/material.dart';
import 'package:flutter_pokemon/models/pokemon_item/pokemon_item.dart';

class PokemonItem extends StatelessWidget {
  const PokemonItem({super.key, required this.pokemon});

  final PokemonOne pokemon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image(
                    image: NetworkImage('${pokemon.sprites?.frontDefault!}'),
                    fit: BoxFit.contain,
                    width: 200,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
