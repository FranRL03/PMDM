import 'dart:convert';

class Silver {
	String? backDefault;
	String? backShiny;
	String? frontDefault;
	String? frontShiny;
	String? frontTransparent;

	Silver({
		this.backDefault, 
		this.backShiny, 
		this.frontDefault, 
		this.frontShiny, 
		this.frontTransparent, 
	});

	factory Silver.fromPokemonItem(Map<String, dynamic> data) => Silver(
				backDefault: data['back_default'] as String?,
				backShiny: data['back_shiny'] as String?,
				frontDefault: data['front_default'] as String?,
				frontShiny: data['front_shiny'] as String?,
				frontTransparent: data['front_transparent'] as String?,
			);

	Map<String, dynamic> toPokemonItem() => {
				'back_default': backDefault,
				'back_shiny': backShiny,
				'front_default': frontDefault,
				'front_shiny': frontShiny,
				'front_transparent': frontTransparent,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Silver].
	factory Silver.fromJson(String data) {
		return Silver.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Silver] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
