import 'dart:convert';

import 'emerald.dart';
import 'firered_leafgreen.dart';
import 'ruby_sapphire.dart';

class GenerationIii {
	Emerald? emerald;
	FireredLeafgreen? fireredLeafgreen;
	RubySapphire? rubySapphire;

	GenerationIii({this.emerald, this.fireredLeafgreen, this.rubySapphire});

	factory GenerationIii.fromPokemonItem(Map<String, dynamic> data) {
		return GenerationIii(
			emerald: data['emerald'] == null
						? null
						: Emerald.fromPokemonItem(data['emerald'] as Map<String, dynamic>),
			fireredLeafgreen: data['firered-leafgreen'] == null
						? null
						: FireredLeafgreen.fromPokemonItem(data['firered-leafgreen'] as Map<String, dynamic>),
			rubySapphire: data['ruby-sapphire'] == null
						? null
						: RubySapphire.fromPokemonItem(data['ruby-sapphire'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'emerald': emerald?.toPokemonItem(),
				'firered-leafgreen': fireredLeafgreen?.toPokemonItem(),
				'ruby-sapphire': rubySapphire?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationIii].
	factory GenerationIii.fromJson(String data) {
		return GenerationIii.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationIii] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
