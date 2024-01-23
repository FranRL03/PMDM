import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/models/people_response/result.dart';

class PeopleDetailsPage extends StatelessWidget {
  const PeopleDetailsPage({super.key, required this.peopleDetails});

  final Result peopleDetails;

  @override
  Widget build(BuildContext context) {
    return Text('${peopleDetails.name}');
  }
}
