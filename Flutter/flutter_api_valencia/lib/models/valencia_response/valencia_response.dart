import 'dart:convert';

import 'result.dart';

class ValenciaResponse {
  int? totalCount;
  List<Result>? results;

  ValenciaResponse({this.totalCount, this.results});

  factory ValenciaResponse.fromValenciaResponse(Map<String, dynamic> data) {
    return ValenciaResponse(
      totalCount: data['total_count'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Result.fromValenciaResponse(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toValenciaResponse() => {
        'total_count': totalCount,
        'results': results?.map((e) => e.toValenciaResponse()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ValenciaResponse].
  factory ValenciaResponse.fromJson(String data) {
    return ValenciaResponse.fromValenciaResponse(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ValenciaResponse] to a JSON string.
  String toJson() => json.encode(toValenciaResponse());
}
