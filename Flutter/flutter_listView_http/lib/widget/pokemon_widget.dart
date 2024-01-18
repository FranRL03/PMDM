import 'package:flutter/material.dart';
import 'package:flutter_pokemon/models/pokemon_response/pokemon_response.dart';
import 'package:flutter_pokemon/models/pokemon_response/result.dart';
import 'package:flutter_pokemon/widget/pokemon_item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class PokemonWidget extends StatefulWidget {
  const PokemonWidget({super.key});

  @override
  State<PokemonWidget> createState() => _PokemonWidgetState();
}

class _PokemonWidgetState extends State<PokemonWidget> {

  Future<List<PokemonResponse>> postsFuture = getPosts();

  static Future<List<PokemonResponse>> getPosts() async {
    var url = Uri.parse("https://pokeapi.co/api/v2/pokemon");
    final response =
        await http.get(url, headers: {"Content-Type": "application/json"});
    final List body = json.decode(response.body);
    return body.map((e) => PokemonResponse.fromJson(e)).toList();
  }

    @override
  void initState() {
    super.initState();
    getPosts();
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // FutureBuilder
        child: FutureBuilder<List<PokemonResponse>>(
          future: postsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // until data is fetched, show loader
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              // once data is fetched, display it on screen (call buildPosts())
              final posts = snapshot.data!;
              return buildPosts(posts);
            } else {
              // if no data, show simple Text
              return const Text("No data available");
            }
          },
        ),
      ),
    );
  }

  Widget buildPosts(List<PokemonResponse> posts) {
    // ListView Builder to show data in a list
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return Container(
          color: Colors.grey.shade300,
          // margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          // padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          // height: 100,
          // width: 100,
          child: Row(
            children: [
              Text(post.results![index].name.toString()),
              // Text(post.name.toString()),
              ]
          ),
        );
      },
    );
  }
}
