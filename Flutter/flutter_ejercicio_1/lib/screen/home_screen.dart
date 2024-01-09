import 'package:flutter/material.dart';
import 'package:flutter_ejercicio_1/widget/my_session.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
      ),
      body: Container(alignment: Alignment.center, color: const Color.fromRGBO(230, 47, 22, 1), child: const MySession(),),
    );
  }
}
