import 'dart:convert';

import 'crystal.dart';
import 'gold.dart';
import 'silver.dart';

class GenerationIi {
	Crystal? crystal;
	Gold? gold;
	Silver? silver;

	GenerationIi({this.crystal, this.gold, this.silver});

	factory GenerationIi.fromPokemonResponse(Map<String, dynamic> data) {
		return GenerationIi(
			crystal: data['crystal'] == null
						? null
						: Crystal.fromPokemonResponse(data['crystal'] as Map<String, dynamic>),
			gold: data['gold'] == null
						? null
						: Gold.fromPokemonResponse(data['gold'] as Map<String, dynamic>),
			silver: data['silver'] == null
						? null
						: Silver.fromPokemonResponse(data['silver'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'crystal': crystal?.toPokemonResponse(),
				'gold': gold?.toPokemonResponse(),
				'silver': silver?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationIi].
	factory GenerationIi.fromJson(String data) {
		return GenerationIi.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationIi] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
