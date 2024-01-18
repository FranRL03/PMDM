import 'dart:convert';

class MoveLearnMethod {
	String? name;
	String? url;

	MoveLearnMethod({this.name, this.url});

	factory MoveLearnMethod.fromPokemonResponse(Map<String, dynamic> data) {
		return MoveLearnMethod(
			name: data['name'] as String?,
			url: data['url'] as String?,
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'name': name,
				'url': url,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MoveLearnMethod].
	factory MoveLearnMethod.fromJson(String data) {
		return MoveLearnMethod.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [MoveLearnMethod] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
