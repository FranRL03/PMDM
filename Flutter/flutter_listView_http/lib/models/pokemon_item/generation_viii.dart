import 'dart:convert';

import 'icons.dart';

class GenerationViii {
	Icons? icons;

	GenerationViii({this.icons});

	factory GenerationViii.fromPokemonItem(Map<String, dynamic> data) {
		return GenerationViii(
			icons: data['icons'] == null
						? null
						: Icons.fromPokemonItem(data['icons'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'icons': icons?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationViii].
	factory GenerationViii.fromJson(String data) {
		return GenerationViii.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationViii] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
