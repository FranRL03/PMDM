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

	factory GenerationIv.fromPokemonResponse(Map<String, dynamic> data) {
		return GenerationIv(
			diamondPearl: data['diamond-pearl'] == null
						? null
						: DiamondPearl.fromPokemonResponse(data['diamond-pearl'] as Map<String, dynamic>),
			heartgoldSoulsilver: data['heartgold-soulsilver'] == null
						? null
						: HeartgoldSoulsilver.fromPokemonResponse(data['heartgold-soulsilver'] as Map<String, dynamic>),
			platinum: data['platinum'] == null
						? null
						: Platinum.fromPokemonResponse(data['platinum'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'diamond-pearl': diamondPearl?.toPokemonResponse(),
				'heartgold-soulsilver': heartgoldSoulsilver?.toPokemonResponse(),
				'platinum': platinum?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationIv].
	factory GenerationIv.fromJson(String data) {
		return GenerationIv.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationIv] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
