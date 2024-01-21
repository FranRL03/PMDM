import 'dart:convert';

class GeoPoint2d {
  double? lon;
  double? lat;

  GeoPoint2d({this.lon, this.lat});

  factory GeoPoint2d.fromValenciaResponse(Map<String, dynamic> data) {
    return GeoPoint2d(
      lon: (data['lon'] as num?)?.toDouble(),
      lat: (data['lat'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toValenciaResponse() => {
        'lon': lon,
        'lat': lat,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GeoPoint2d].
  factory GeoPoint2d.fromJson(String data) {
    return GeoPoint2d.fromValenciaResponse(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GeoPoint2d] to a JSON string.
  String toJson() => json.encode(toValenciaResponse());
}
