import 'dart:convert';

import 'version.dart';

class VersionDetail {
	int? rarity;
	Version? version;

	VersionDetail({this.rarity, this.version});

	factory VersionDetail.fromPokemonItem(Map<String, dynamic> data) {
		return VersionDetail(
			rarity: data['rarity'] as int?,
			version: data['version'] == null
						? null
						: Version.fromPokemonItem(data['version'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'rarity': rarity,
				'version': version?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VersionDetail].
	factory VersionDetail.fromJson(String data) {
		return VersionDetail.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [VersionDetail] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
