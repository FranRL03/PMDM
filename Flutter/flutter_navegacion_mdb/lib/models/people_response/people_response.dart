import 'dart:convert';

import 'result.dart';

class PeopleResponse {
	int? page;
	List<Result>? results;
	int? totalPages;
	int? totalResults;

	PeopleResponse({this.page, this.results, this.totalPages, this.totalResults});

	factory PeopleResponse.fromPeopleItem(Map<String, dynamic> data) => PeopleResponse(
				page: data['page'] as int?,
				results: (data['results'] as List<dynamic>?)
						?.map((e) => Result.fromPeopleItem(e as Map<String, dynamic>))
						.toList(),
				totalPages: data['total_pages'] as int?,
				totalResults: data['total_results'] as int?,
			);

	Map<String, dynamic> toPeopleItem() => {
				'page': page,
				'results': results?.map((e) => e.toPeopleItem()).toList(),
				'total_pages': totalPages,
				'total_results': totalResults,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PeopleItem].
	factory PeopleResponse.fromJson(String data) {
		return PeopleResponse.fromPeopleItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [PeopleItem] to a JSON string.
	String toJson() => json.encode(toPeopleItem());
}
