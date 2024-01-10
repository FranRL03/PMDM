import 'package:flutter/material.dart';
import 'package:flutter_ejercicio_1/widget/my_session.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromRGBO(230, 47, 22, 1),
        child: const MySession(),
      ),
    );
  }
}
