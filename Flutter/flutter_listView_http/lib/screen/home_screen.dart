import 'package:flutter/material.dart';
import 'package:flutter_pokemon/models/pokemon_response/result.dart';
import 'package:flutter_pokemon/widget/pokemon_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.pokemonList});
  final List<Result> pokemonList;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemons'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: widget.pokemonList.length,
          itemBuilder: (context, index) {
            return PokemonWidget(pokemonName: widget.pokemonList[index].name!);
          }),
    );
  }
}
