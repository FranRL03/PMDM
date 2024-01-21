import 'package:flutter/material.dart';
import 'package:flutter_api_valencia/models/valencia_response/valencia_response.dart';
import 'package:flutter_api_valencia/screen/home_screen.dart';
import 'package:http/http.dart' as http;


Future<ValenciaResponse> fetchValencia() async {
  final response =
      await http.get(Uri.parse('https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/parkings/records?limit=20'));
  if (response.statusCode == 200) {
    final toReturn = ValenciaResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load aparcamientos');
  }
}

class AparcamientoListWidget extends StatefulWidget {
  const AparcamientoListWidget({super.key});

  @override
  State<AparcamientoListWidget> createState() => _AparcamientoListWidgetState();
}

class _AparcamientoListWidgetState extends State<AparcamientoListWidget> {

late Future<ValenciaResponse> valencia;
  @override
  void initState() {
    super.initState();
    valencia = fetchValencia();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder<ValenciaResponse>(
            future: valencia,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return HomeScreen(resultAparcamiento: snapshot.data!.results!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const Text('Datos no encontrados');
            }));
  }
}