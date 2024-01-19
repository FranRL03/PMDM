import 'dart:convert';

class Home {
	String? frontDefault;
	dynamic frontFemale;
	String? frontShiny;
	dynamic frontShinyFemale;

	Home({
		this.frontDefault, 
		this.frontFemale, 
		this.frontShiny, 
		this.frontShinyFemale, 
	});

	factory Home.fromPokemonItem(Map<String, dynamic> data) => Home(
				frontDefault: data['front_default'] as String?,
				frontFemale: data['front_female'] as dynamic,
				frontShiny: data['front_shiny'] as String?,
				frontShinyFemale: data['front_shiny_female'] as dynamic,
			);

	Map<String, dynamic> toPokemonItem() => {
				'front_default': frontDefault,
				'front_female': frontFemale,
				'front_shiny': frontShiny,
				'front_shiny_female': frontShinyFemale,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Home].
	factory Home.fromJson(String data) {
		return Home.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Home] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
