import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/models/movie_videos_response/movie_videos_response.dart';
import 'package:flutter_navegacion_mdb/widget/movies/video_item_widget.dart';
import 'package:http/http.dart' as http;

Future<MovieVideosResponse> fetchTrailers(int id) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$id/videos?api_key=b448b25869241da85a01f82d0167801c'));

  if (response.statusCode == 200) {
    return MovieVideosResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

class TrailerList extends StatefulWidget {
  final int movieId;
  const TrailerList({super.key, required this.movieId});

  @override
  State<TrailerList> createState() => _TrailerListState();
}

class _TrailerListState extends State<TrailerList> {
  late Future<MovieVideosResponse> trailers;
  @override
  void initState() {
    super.initState();
    trailers = fetchTrailers(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieVideosResponse>(
      future: trailers,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.results!.length,
                itemBuilder: (BuildContext context, int index) {
                  return VideoItemWidget(
                      movieTrailer: snapshot.data!.results![index]);
                },
              ));
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
