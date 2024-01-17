import 'dart:convert';

class Icons {
	String? frontDefault;
	dynamic frontFemale;

	Icons({this.frontDefault, this.frontFemale});

	factory Icons.fromPokemonResponse(Map<String, dynamic> data) => Icons(
				frontDefault: data['front_default'] as String?,
				frontFemale: data['front_female'] as dynamic,
			);

	Map<String, dynamic> toPokemonResponse() => {
				'front_default': frontDefault,
				'front_female': frontFemale,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Icons].
	factory Icons.fromJson(String data) {
		return Icons.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Icons] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
