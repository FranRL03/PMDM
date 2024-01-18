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

	factory Other.fromPokemonResponse(Map<String, dynamic> data) => Other(
				dreamWorld: data['dream_world'] == null
						? null
						: DreamWorld.fromPokemonResponse(data['dream_world'] as Map<String, dynamic>),
				home: data['home'] == null
						? null
						: Home.fromPokemonResponse(data['home'] as Map<String, dynamic>),
				officialArtwork: data['official-artwork'] == null
						? null
						: OfficialArtwork.fromPokemonResponse(data['official-artwork'] as Map<String, dynamic>),
				showdown: data['showdown'] == null
						? null
						: Showdown.fromPokemonResponse(data['showdown'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toPokemonResponse() => {
				'dream_world': dreamWorld?.toPokemonResponse(),
				'home': home?.toPokemonResponse(),
				'official-artwork': officialArtwork?.toPokemonResponse(),
				'showdown': showdown?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Other].
	factory Other.fromJson(String data) {
		return Other.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Other] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
