import 'dart:convert';

class DreamWorld {
	String? frontDefault;
	dynamic frontFemale;

	DreamWorld({this.frontDefault, this.frontFemale});

	factory DreamWorld.fromPokemonResponse(Map<String, dynamic> data) {
		return DreamWorld(
			frontDefault: data['front_default'] as String?,
			frontFemale: data['front_female'] as dynamic,
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'front_default': frontDefault,
				'front_female': frontFemale,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DreamWorld].
	factory DreamWorld.fromJson(String data) {
		return DreamWorld.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [DreamWorld] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
