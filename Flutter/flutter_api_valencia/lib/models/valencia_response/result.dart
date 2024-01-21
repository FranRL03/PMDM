import 'dart:convert';

import 'geo_point2d.dart';
import 'geo_shape.dart';

class Result {
  String? nombre;
  String? direccion;
  int? idAparcamiento;
  String? numeropol;
  int? tipo;
  int? plazastota;
  int? plazaslibr;
  dynamic ultimaMod;
  int? objectid;
  double? ocupacion;
  GeoShape? geoShape;
  GeoPoint2d? geoPoint2d;

  Result({
    this.nombre,
    this.direccion,
    this.idAparcamiento,
    this.numeropol,
    this.tipo,
    this.plazastota,
    this.plazaslibr,
    this.ultimaMod,
    this.objectid,
    this.ocupacion,
    this.geoShape,
    this.geoPoint2d,
  });

  factory Result.fromValenciaResponse(Map<String, dynamic> data) => Result(
        nombre: data['nombre'] as String?,
        direccion: data['direccion'] as String?,
        idAparcamiento: data['id_aparcamiento'] as int?,
        numeropol: data['numeropol'] as String?,
        tipo: data['tipo'] as int?,
        plazastota: data['plazastota'] as int?,
        plazaslibr: data['plazaslibr'] as int?,
        ultimaMod: data['ultima_mod'] as dynamic,
        objectid: data['objectid'] as int?,
        ocupacion: (data['ocupacion'] as num?)?.toDouble(),
        geoShape: data['geo_shape'] == null
            ? null
            : GeoShape.fromValenciaResponse(
                data['geo_shape'] as Map<String, dynamic>),
        geoPoint2d: data['geo_point_2d'] == null
            ? null
            : GeoPoint2d.fromValenciaResponse(
                data['geo_point_2d'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toValenciaResponse() => {
        'nombre': nombre,
        'direccion': direccion,
        'id_aparcamiento': idAparcamiento,
        'numeropol': numeropol,
        'tipo': tipo,
        'plazastota': plazastota,
        'plazaslibr': plazaslibr,
        'ultima_mod': ultimaMod,
        'objectid': objectid,
        'ocupacion': ocupacion,
        // 'geo_shape': geoShape?.toValenciaResponse(),
        'geo_point_2d': geoPoint2d?.toValenciaResponse(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Result].
  factory Result.fromJson(String data) {
    return Result.fromValenciaResponse(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Result] to a JSON string.
  String toJson() => json.encode(toValenciaResponse());
}
