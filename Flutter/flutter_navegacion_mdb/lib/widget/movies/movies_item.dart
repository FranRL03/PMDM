import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/widget/movies/movie_details.dart';

import '../../models/movie_response/result.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.result});

  final Result result;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 230, 218, 218),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image(
            image: NetworkImage(
              'https://media.themoviedb.org/t/p/w500${result.posterPath}',
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    '${result.title}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MovieDetailsPage(
                                      movieDetails: result,
                                    )));
                  },
                  child: const Text('Info'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
