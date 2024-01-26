import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/models/movie_response/result.dart';
import 'package:flutter_navegacion_mdb/widget/movies/trailer_list_widget.dart';

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
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
                          fontSize: 18,
                        ))
                  ],
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Text('Info',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                Text('${movieDetails.overview}',
                    style: const TextStyle(
                      fontSize: 18,
                    )),
                // TrailerList()
              ],
            ),
          ),
        ]),
        backgroundColor: const Color.fromARGB(255, 186, 184, 184));
  }
}
