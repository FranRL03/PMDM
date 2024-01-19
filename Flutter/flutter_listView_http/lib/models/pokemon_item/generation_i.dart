import 'dart:convert';

import 'red_blue.dart';
import 'yellow.dart';

class GenerationI {
	RedBlue? redBlue;
	Yellow? yellow;

	GenerationI({this.redBlue, this.yellow});

	factory GenerationI.fromPokemonItem(Map<String, dynamic> data) {
		return GenerationI(
			redBlue: data['red-blue'] == null
						? null
						: RedBlue.fromPokemonItem(data['red-blue'] as Map<String, dynamic>),
			yellow: data['yellow'] == null
						? null
						: Yellow.fromPokemonItem(data['yellow'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'red-blue': redBlue?.toPokemonItem(),
				'yellow': yellow?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationI].
	factory GenerationI.fromJson(String data) {
		return GenerationI.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationI] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
