import 'dart:convert';

class Geometry {
  List<double>? coordinates;
  String? type;

  Geometry({this.coordinates, this.type});

  factory Geometry.fromValenciaResponse(Map<String, dynamic> data) {
    return Geometry(
      coordinates: data['coordinates'] as List<double>?,
      type: data['type'] as String?,
    );
  }

  Map<String, dynamic> toValenciaResponse() => {
        'coordinates': coordinates,
        'type': type,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Geometry].
  factory Geometry.fromJson(String data) {
    return Geometry.fromValenciaResponse(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Geometry] to a JSON string.
  String toJson() => json.encode(toValenciaResponse());
}
