import 'dart:convert';

class Emerald {
	String? frontDefault;
	String? frontShiny;

	Emerald({this.frontDefault, this.frontShiny});

	factory Emerald.fromPokemonItem(Map<String, dynamic> data) => Emerald(
				frontDefault: data['front_default'] as String?,
				frontShiny: data['front_shiny'] as String?,
			);

	Map<String, dynamic> toPokemonItem() => {
				'front_default': frontDefault,
				'front_shiny': frontShiny,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Emerald].
	factory Emerald.fromJson(String data) {
		return Emerald.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Emerald] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
