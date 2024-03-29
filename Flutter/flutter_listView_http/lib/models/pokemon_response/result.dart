import 'dart:convert';

class Result {
	String? name;
	String? url;

	Result({this.name, this.url});

	factory Result.fromPokemonResponse(Map<String, dynamic> data) => Result(
				name: data['name'] as String?,
				url: data['url'] as String?,
			);

	Map<String, dynamic> toPokemonResponse() => {
				'name': name,
				'url': url,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Result].
	factory Result.fromJson(String data) {
		return Result.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Result] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
