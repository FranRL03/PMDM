import 'dart:convert';

import 'diamond_pearl.dart';
import 'heartgold_soulsilver.dart';
import 'platinum.dart';

class GenerationIv {
	DiamondPearl? diamondPearl;
	HeartgoldSoulsilver? heartgoldSoulsilver;
	Platinum? platinum;

	GenerationIv({
		this.diamondPearl, 
		this.heartgoldSoulsilver, 
		this.platinum, 
	});

	factory GenerationIv.fromPokemonItem(Map<String, dynamic> data) {
		return GenerationIv(
			diamondPearl: data['diamond-pearl'] == null
						? null
						: DiamondPearl.fromPokemonItem(data['diamond-pearl'] as Map<String, dynamic>),
			heartgoldSoulsilver: data['heartgold-soulsilver'] == null
						? null
						: HeartgoldSoulsilver.fromPokemonItem(data['heartgold-soulsilver'] as Map<String, dynamic>),
			platinum: data['platinum'] == null
						? null
						: Platinum.fromPokemonItem(data['platinum'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'diamond-pearl': diamondPearl?.toPokemonItem(),
				'heartgold-soulsilver': heartgoldSoulsilver?.toPokemonItem(),
				'platinum': platinum?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationIv].
	factory GenerationIv.fromJson(String data) {
		return GenerationIv.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationIv] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
