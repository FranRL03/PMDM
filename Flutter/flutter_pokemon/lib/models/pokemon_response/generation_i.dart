import 'dart:convert';

import 'red_blue.dart';
import 'yellow.dart';

class GenerationI {
	RedBlue? redBlue;
	Yellow? yellow;

	GenerationI({this.redBlue, this.yellow});

	factory GenerationI.fromPokemonResponse(Map<String, dynamic> data) {
		return GenerationI(
			redBlue: data['red-blue'] == null
						? null
						: RedBlue.fromPokemonResponse(data['red-blue'] as Map<String, dynamic>),
			yellow: data['yellow'] == null
						? null
						: Yellow.fromPokemonResponse(data['yellow'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'red-blue': redBlue?.toPokemonResponse(),
				'yellow': yellow?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationI].
	factory GenerationI.fromJson(String data) {
		return GenerationI.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationI] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
