import 'package:flutter/material.dart';

import '../models/people_item/result.dart';

class PeopleItem extends StatelessWidget {
  const PeopleItem({super.key, required this.result});

final Result result;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 400,
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image(
                    image: NetworkImage('${result.profilePath}'),
                    fit: BoxFit.contain,
                    width: 200,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
