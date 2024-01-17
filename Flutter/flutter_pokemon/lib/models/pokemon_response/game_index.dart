import 'dart:convert';

import 'version.dart';

class GameIndex {
	int? gameIndex;
	Version? version;

	GameIndex({this.gameIndex, this.version});

	factory GameIndex.fromPokemonResponse(Map<String, dynamic> data) {
		return GameIndex(
			gameIndex: data['game_index'] as int?,
			version: data['version'] == null
						? null
						: Version.fromPokemonResponse(data['version'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'game_index': gameIndex,
				'version': version?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GameIndex].
	factory GameIndex.fromJson(String data) {
		return GameIndex.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GameIndex] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
