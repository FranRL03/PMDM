import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
    final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition camara = CameraPosition(
    target: LatLng(37.38049329951381, -6.007534638184238),
    zoom: 14.4746,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: camara,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          const Marker(
            markerId: MarkerId('Salesianos Triana'),
            position: LatLng(37.38049329951381, -6.007534638184238))
        },
  ));
  }
}
