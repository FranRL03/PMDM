import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/models/movie_response/movie_response.dart';
import 'package:flutter_navegacion_mdb/widget/movies/movie_widget.dart';
import 'package:http/http.dart' as http;

Future<MovieResponse> fetchMovie() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=b448b25869241da85a01f82d0167801c'));
  if (response.statusCode == 200) {
    final toReturn = MovieResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load movies');
  }
}

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  late Future<MovieResponse> movie;
  @override
  void initState() {
    super.initState();
    movie = fetchMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder<MovieResponse>(
            future: movie,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return MovieWidget(movieList: snapshot.data!.results!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const Text('Datos no encontrados');
            }));
  }
}
