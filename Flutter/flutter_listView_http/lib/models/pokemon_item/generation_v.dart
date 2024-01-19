import 'dart:convert';

import 'black_white.dart';

class GenerationV {
	BlackWhite? blackWhite;

	GenerationV({this.blackWhite});

	factory GenerationV.fromPokemonItem(Map<String, dynamic> data) {
		return GenerationV(
			blackWhite: data['black-white'] == null
						? null
						: BlackWhite.fromPokemonItem(data['black-white'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'black-white': blackWhite?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationV].
	factory GenerationV.fromJson(String data) {
		return GenerationV.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationV] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
