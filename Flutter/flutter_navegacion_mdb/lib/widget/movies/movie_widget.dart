import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/models/movie_response/result.dart';
import 'package:flutter_navegacion_mdb/widget/movies/movies_item.dart';

class MovieWidget extends StatefulWidget {
  const MovieWidget({super.key, required this.movieList});

  final List<Result> movieList;

  @override
  State<MovieWidget> createState() => _MovieWidgetState();
}

class _MovieWidgetState extends State<MovieWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.movieList.length,
        itemBuilder: (context, index) {
          return MovieItem(result: widget.movieList[index]);
        });
  }
}
