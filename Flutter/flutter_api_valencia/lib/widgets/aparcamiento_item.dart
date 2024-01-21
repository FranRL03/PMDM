import 'package:flutter/material.dart';
import 'package:flutter_api_valencia/models/valencia_response/result.dart';
import 'package:flutter_api_valencia/models/valencia_response/valencia_response.dart';

class AparcamientoItem extends StatelessWidget {

final Result result;
// final ValenciaResponse response;

  const AparcamientoItem({super.key, required this.result});

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
                  child:Text('${result.nombre}')),
            ],
          ),
        ),
      ),
    );
  }
}