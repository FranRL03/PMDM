
import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/models/people_response/result.dart';

class PeopleDetailsPage extends StatelessWidget {
  const PeopleDetailsPage({super.key, required this.peopleDetails});

  final Result peopleDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${peopleDetails.name}'),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                  'https://media.themoviedb.org/t/p/w200${peopleDetails.profilePath}'),
              Text('${peopleDetails.originalName}', 
               style: const TextStyle(
                      fontSize: 18, // Tamaño de la fuente
                      fontWeight: FontWeight.bold, // Peso de la fuente
                      color: Colors.black, // Color del texto
                    ),),
              Row(
                children: [
                  const Icon(
                    Icons.star_sharp,
                    color: Colors.amber,
                  ),
                  Text(
                    '${peopleDetails.popularity}',
                    style: const TextStyle(
                      fontSize: 18, // Tamaño de la fuente, // Color del texto
                    )
                    )
                ],
              ),
              const Divider(color: Colors.black,),
              const Text('Departament', 
              style: TextStyle(
                      fontSize: 20, // Tamaño de la fuente
                      fontWeight: FontWeight.bold, // Peso de la fuente
                      color: Colors.black, // Color del texto
                    )),
              Text('${peopleDetails.knownForDepartment}', 
              style: const TextStyle(
                fontSize: 18
              ),)
            ],
          ),
        ),
          backgroundColor: const Color.fromARGB(255, 186, 184, 184));
  }
}
