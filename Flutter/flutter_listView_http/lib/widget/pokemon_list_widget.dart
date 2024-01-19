import 'package:flutter/material.dart';
import 'package:flutter_pokemon/models/pokemon_response/pokemon_response.dart';
import 'package:flutter_pokemon/screen/home_screen.dart';
import 'package:http/http.dart' as http;
// import 'package:skeletonizer/skeletonizer.dart';

Future<PokemonResponse> fetchPokemon() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/'));
  if (response.statusCode == 200) {
    final toReturn = PokemonResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load pokemons');
  }
}

class PokemonListWidget extends StatefulWidget {
  const PokemonListWidget({super.key});

  @override
  State<PokemonListWidget> createState() => _PokemonListWidgetState();
}

class _PokemonListWidgetState extends State<PokemonListWidget> {
  late Future<PokemonResponse> pokemonList;
  @override
  void initState() {
    super.initState();
    pokemonList = fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder<PokemonResponse>(
            future: pokemonList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return HomeScreen(pokemonList: snapshot.data!.results!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const Text('Datos no encontrados');
            }));
  }
}
