import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/models/movie_response/result.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movieDetails});

  final Result movieDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${movieDetails.title}'),
        ),
        body: ListView(children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                    'https://media.themoviedb.org/t/p/w200${movieDetails.posterPath}'),
                Text(
                  '${movieDetails.originalTitle}',
                  style: const TextStyle(
                    fontSize: 18, // Tamaño de la fuente
                    fontWeight: FontWeight.bold, // Peso de la fuente
                    color: Colors.black, // Color del texto
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_sharp,
                      color: Colors.amber,
                    ),
                    Text('${movieDetails.popularity}',
                        style: const TextStyle(
                          fontSize:
                              18, // Tamaño de la fuente, // Color del texto
                        ))
                  ],
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Text('Info',
                    style: TextStyle(
                      fontSize: 20, // Tamaño de la fuente
                      fontWeight: FontWeight.bold, // Peso de la fuente
                      color: Colors.black, // Color del texto
                    )),
                Text(
                  '${movieDetails.originalLanguage}',
                  style: const TextStyle(fontSize: 18),
                ),
                Text('${movieDetails.releaseDate}',
                    style: const TextStyle(fontSize: 18)),
                const Divider(
                  color: Colors.black,
                ),
                const Text('Overview',
                style: TextStyle(
                      fontSize: 20, // Tamaño de la fuente
                      fontWeight: FontWeight.bold, // Peso de la fuente
                      color: Colors.black, // Color del texto
                    )),
                Text('${movieDetails.overview}',
                    style: const TextStyle(
                      fontSize: 18, // Tamaño de la fuente, // Color del texto
                    ))
              ],
            ),
          ),
        ]),
        backgroundColor: const Color.fromARGB(255, 186, 184, 184));
  }
}
