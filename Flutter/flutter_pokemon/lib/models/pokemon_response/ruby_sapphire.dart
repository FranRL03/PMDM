import 'dart:convert';

class RubySapphire {
	String? backDefault;
	String? backShiny;
	String? frontDefault;
	String? frontShiny;

	RubySapphire({
		this.backDefault, 
		this.backShiny, 
		this.frontDefault, 
		this.frontShiny, 
	});

	factory RubySapphire.fromPokemonResponse(Map<String, dynamic> data) {
		return RubySapphire(
			backDefault: data['back_default'] as String?,
			backShiny: data['back_shiny'] as String?,
			frontDefault: data['front_default'] as String?,
			frontShiny: data['front_shiny'] as String?,
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'back_default': backDefault,
				'back_shiny': backShiny,
				'front_default': frontDefault,
				'front_shiny': frontShiny,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [RubySapphire].
	factory RubySapphire.fromJson(String data) {
		return RubySapphire.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [RubySapphire] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
