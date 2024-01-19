import 'dart:convert';

import 'dream_world.dart';
import 'home.dart';
import 'official_artwork.dart';
import 'showdown.dart';

class Other {
	DreamWorld? dreamWorld;
	Home? home;
	OfficialArtwork? officialArtwork;
	Showdown? showdown;

	Other({this.dreamWorld, this.home, this.officialArtwork, this.showdown});

	factory Other.fromPokemonItem(Map<String, dynamic> data) => Other(
				dreamWorld: data['dream_world'] == null
						? null
						: DreamWorld.fromPokemonItem(data['dream_world'] as Map<String, dynamic>),
				home: data['home'] == null
						? null
						: Home.fromPokemonItem(data['home'] as Map<String, dynamic>),
				officialArtwork: data['official-artwork'] == null
						? null
						: OfficialArtwork.fromPokemonItem(data['official-artwork'] as Map<String, dynamic>),
				showdown: data['showdown'] == null
						? null
						: Showdown.fromPokemonItem(data['showdown'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toPokemonItem() => {
				'dream_world': dreamWorld?.toPokemonItem(),
				'home': home?.toPokemonItem(),
				'official-artwork': officialArtwork?.toPokemonItem(),
				'showdown': showdown?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Other].
	factory Other.fromJson(String data) {
		return Other.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Other] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
