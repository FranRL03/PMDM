import 'dart:convert';

import 'crystal.dart';
import 'gold.dart';
import 'silver.dart';

class GenerationIi {
	Crystal? crystal;
	Gold? gold;
	Silver? silver;

	GenerationIi({this.crystal, this.gold, this.silver});

	factory GenerationIi.fromPokemonItem(Map<String, dynamic> data) {
		return GenerationIi(
			crystal: data['crystal'] == null
						? null
						: Crystal.fromPokemonItem(data['crystal'] as Map<String, dynamic>),
			gold: data['gold'] == null
						? null
						: Gold.fromPokemonItem(data['gold'] as Map<String, dynamic>),
			silver: data['silver'] == null
						? null
						: Silver.fromPokemonItem(data['silver'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'crystal': crystal?.toPokemonItem(),
				'gold': gold?.toPokemonItem(),
				'silver': silver?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationIi].
	factory GenerationIi.fromJson(String data) {
		return GenerationIi.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationIi] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
