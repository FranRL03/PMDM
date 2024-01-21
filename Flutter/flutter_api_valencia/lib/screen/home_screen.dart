import 'package:flutter/material.dart';
import 'package:flutter_api_valencia/models/valencia_response/result.dart';
import 'package:flutter_api_valencia/widgets/aparcamiento_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.resultAparcamiento});

  final List<Result> resultAparcamiento;
  // final Result resultAparcamiento;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aparcamientos'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: widget.resultAparcamiento.length,
          itemBuilder: (context, index) {
            return AparcamientoItem(result: widget.resultAparcamiento[index]);
          }),
    );
  }
}