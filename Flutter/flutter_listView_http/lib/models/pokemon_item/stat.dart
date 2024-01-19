import 'dart:convert';

import 'stat.dart';

class Stat {
	int? baseStat;
	int? effort;
	Stat? stat;

	Stat({this.baseStat, this.effort, this.stat});

	factory Stat.fromPokemonItem(Map<String, dynamic> data) => Stat(
				baseStat: data['base_stat'] as int?,
				effort: data['effort'] as int?,
				stat: data['stat'] == null
						? null
						: Stat.fromPokemonItem(data['stat'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toPokemonItem() => {
				'base_stat': baseStat,
				'effort': effort,
				'stat': stat?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Stat].
	factory Stat.fromJson(String data) {
		return Stat.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Stat] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
