import 'package:flutter/material.dart';
import 'package:flutter_pokemon/models/pokemon_item/pokemon_item.dart';
import 'package:flutter_pokemon/widget/pokemon_item.dart';
import 'package:http/http.dart' as http;

Future<PokemonOne> fetchPokemon(String name) async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$name'));
  if (response.statusCode == 200) {
    return PokemonOne.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class PokemonWidget extends StatefulWidget {
  const PokemonWidget({super.key, required this.pokemonName});
  final String pokemonName;
  @override
  State<PokemonWidget> createState() => PokemonWidgetState();
}

class PokemonWidgetState extends State<PokemonWidget> {
  late Future<PokemonOne> pokemon;
  @override
  void initState() {
    super.initState();
    pokemon = fetchPokemon(widget.pokemonName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: FutureBuilder<PokemonOne>(
        future: pokemon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PokemonItem(pokemon: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
