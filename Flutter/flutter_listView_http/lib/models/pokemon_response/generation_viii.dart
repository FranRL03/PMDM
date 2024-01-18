import 'dart:convert';

import 'icons.dart';

class GenerationViii {
	Icons? icons;

	GenerationViii({this.icons});

	factory GenerationViii.fromPokemonResponse(Map<String, dynamic> data) {
		return GenerationViii(
			icons: data['icons'] == null
						? null
						: Icons.fromPokemonResponse(data['icons'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'icons': icons?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationViii].
	factory GenerationViii.fromJson(String data) {
		return GenerationViii.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationViii] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
