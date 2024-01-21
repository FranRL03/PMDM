import 'dart:convert';

import 'geometry.dart';
import 'properties.dart';

class GeoShape {
  String? type;
  Geometry? geometry;
  Properties? properties;

  GeoShape({this.type, this.geometry, this.properties});

  factory GeoShape.fromValenciaResponse(Map<String, dynamic> data) {
    return GeoShape(
      type: data['type'] as String?,
      geometry: data['geometry'] == null
          ? null
          : Geometry.fromValenciaResponse(
              data['geometry'] as Map<String, dynamic>),
      // properties: data['properties'] == null
      //     ? null
      //     : Properties.fromValenciaResponse(
      //         data['properties'] as Map<String, dynamic>),
    );
  }

  // Map<String, dynamic> toValenciaResponse() => {
  //       'type': type,
  //       'geometry': geometry?.toValenciaResponse(),
  //       'properties': properties?.toValenciaResponse(),
  //     };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GeoShape].
  factory GeoShape.fromJson(String data) {
    return GeoShape.fromValenciaResponse(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GeoShape] to a JSON string.
  // String toJson() => json.encode(toValenciaResponse());
}
