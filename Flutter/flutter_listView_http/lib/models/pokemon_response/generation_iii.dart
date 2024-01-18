import 'dart:convert';

import 'emerald.dart';
import 'firered_leafgreen.dart';
import 'ruby_sapphire.dart';

class GenerationIii {
	Emerald? emerald;
	FireredLeafgreen? fireredLeafgreen;
	RubySapphire? rubySapphire;

	GenerationIii({this.emerald, this.fireredLeafgreen, this.rubySapphire});

	factory GenerationIii.fromPokemonResponse(Map<String, dynamic> data) {
		return GenerationIii(
			emerald: data['emerald'] == null
						? null
						: Emerald.fromPokemonResponse(data['emerald'] as Map<String, dynamic>),
			fireredLeafgreen: data['firered-leafgreen'] == null
						? null
						: FireredLeafgreen.fromPokemonResponse(data['firered-leafgreen'] as Map<String, dynamic>),
			rubySapphire: data['ruby-sapphire'] == null
						? null
						: RubySapphire.fromPokemonResponse(data['ruby-sapphire'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'emerald': emerald?.toPokemonResponse(),
				'firered-leafgreen': fireredLeafgreen?.toPokemonResponse(),
				'ruby-sapphire': rubySapphire?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationIii].
	factory GenerationIii.fromJson(String data) {
		return GenerationIii.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationIii] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
