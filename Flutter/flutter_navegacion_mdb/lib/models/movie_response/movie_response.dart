import 'dart:convert';

import 'result.dart';

class MovieResponse {
	int? page;
	List<Result>? results;
	int? totalPages;
	int? totalResults;

	MovieResponse({
		this.page, 
		this.results, 
		this.totalPages, 
		this.totalResults, 
	});

	factory MovieResponse.fromMovieResponse(Map<String, dynamic> data) {
		return MovieResponse(
			page: data['page'] as int?,
			results: (data['results'] as List<dynamic>?)
						?.map((e) => Result.fromMovieResponse(e as Map<String, dynamic>))
						.toList(),
			totalPages: data['total_pages'] as int?,
			totalResults: data['total_results'] as int?,
		);
	}



	Map<String, dynamic> toMovieResponse() => {
				'page': page,
				'results': results?.map((e) => e.toMovieResponse()).toList(),
				'total_pages': totalPages,
				'total_results': totalResults,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MovieResponse].
	factory MovieResponse.fromJson(String data) {
		return MovieResponse.fromMovieResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [MovieResponse] to a JSON string.
	String toJson() => json.encode(toMovieResponse());
}
