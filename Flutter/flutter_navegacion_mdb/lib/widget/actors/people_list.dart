import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/widget/actors/people_widget.dart';

import '../../models/people_response/people_response.dart';
import 'package:http/http.dart' as http;

Future<PeopleResponse> fetchPeople() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/popular?api_key=b448b25869241da85a01f82d0167801c'));
  if (response.statusCode == 200) {
    final toReturn = PeopleResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load actores');
  }
}

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  late Future<PeopleResponse> people;
  @override
  void initState() {
    super.initState();
    people = fetchPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder<PeopleResponse>(
            future: people,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return PeopleWidget(peopleList: snapshot.data!.results!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const Text('Datos no encontrados');
            }));
  }
}
