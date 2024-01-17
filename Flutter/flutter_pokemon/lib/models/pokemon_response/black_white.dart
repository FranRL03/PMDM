import 'dart:convert';

import 'animated.dart';

class BlackWhite {
	Animated? animated;
	String? backDefault;
	dynamic backFemale;
	String? backShiny;
	dynamic backShinyFemale;
	String? frontDefault;
	dynamic frontFemale;
	String? frontShiny;
	dynamic frontShinyFemale;

	BlackWhite({
		this.animated, 
		this.backDefault, 
		this.backFemale, 
		this.backShiny, 
		this.backShinyFemale, 
		this.frontDefault, 
		this.frontFemale, 
		this.frontShiny, 
		this.frontShinyFemale, 
	});

	factory BlackWhite.fromPokemonResponse(Map<String, dynamic> data) {
		return BlackWhite(
			animated: data['animated'] == null
						? null
						: Animated.fromPokemonResponse(data['animated'] as Map<String, dynamic>),
			backDefault: data['back_default'] as String?,
			backFemale: data['back_female'] as dynamic,
			backShiny: data['back_shiny'] as String?,
			backShinyFemale: data['back_shiny_female'] as dynamic,
			frontDefault: data['front_default'] as String?,
			frontFemale: data['front_female'] as dynamic,
			frontShiny: data['front_shiny'] as String?,
			frontShinyFemale: data['front_shiny_female'] as dynamic,
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'animated': animated?.toPokemonResponse(),
				'back_default': backDefault,
				'back_female': backFemale,
				'back_shiny': backShiny,
				'back_shiny_female': backShinyFemale,
				'front_default': frontDefault,
				'front_female': frontFemale,
				'front_shiny': frontShiny,
				'front_shiny_female': frontShinyFemale,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BlackWhite].
	factory BlackWhite.fromJson(String data) {
		return BlackWhite.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [BlackWhite] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
