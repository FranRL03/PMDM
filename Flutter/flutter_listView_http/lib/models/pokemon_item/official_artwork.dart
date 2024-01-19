import 'dart:convert';

class OfficialArtwork {
	String? frontDefault;
	String? frontShiny;

	OfficialArtwork({this.frontDefault, this.frontShiny});

	factory OfficialArtwork.fromPokemonItem(Map<String, dynamic> data) {
		return OfficialArtwork(
			frontDefault: data['front_default'] as String?,
			frontShiny: data['front_shiny'] as String?,
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'front_default': frontDefault,
				'front_shiny': frontShiny,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OfficialArtwork].
	factory OfficialArtwork.fromJson(String data) {
		return OfficialArtwork.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [OfficialArtwork] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
