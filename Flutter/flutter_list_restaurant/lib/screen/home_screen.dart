import 'package:flutter/material.dart';
import 'package:flutter_list_restaurant/widget/RestaurantListItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            RestaurantListItem(
                url:
                    'https://i0.wp.com/2.bp.blogspot.com/-wOwakdlnS00/UEiIIBpaPvI/AAAAAAAAACU/wPA49ix5cXs/s1600/Disney+Land++(12).JPG?ssl=1',
                nombre: 'Italiana',
                direccion: 'Pagis',
                valoracionMedia: 4.5,
                precioMedio: 19),
            RestaurantListItem(
                url:
                    'https://i0.wp.com/2.bp.blogspot.com/-wOwakdlnS00/UEiIIBpaPvI/AAAAAAAAACU/wPA49ix5cXs/s1600/Disney+Land++(12).JPG?ssl=1',
                nombre: 'Italiana',
                direccion: 'Pagis',
                valoracionMedia: 4.5,
                precioMedio: 19),
            RestaurantListItem(
                url:
                    'https://i0.wp.com/2.bp.blogspot.com/-wOwakdlnS00/UEiIIBpaPvI/AAAAAAAAACU/wPA49ix5cXs/s1600/Disney+Land++(12).JPG?ssl=1',
                nombre: 'Italiana',
                direccion: 'Pagis',
                valoracionMedia: 4.5,
                precioMedio: 19)
          ],
        ),
      ),
    );
  }
}
