import 'dart:convert';

import 'ability.dart';

class Ability {
	Ability? ability;
	bool? isHidden;
	int? slot;

	Ability({this.ability, this.isHidden, this.slot});

	factory Ability.fromPokemonItem(Map<String, dynamic> data) => Ability(
				ability: data['ability'] == null
						? null
						: Ability.fromPokemonItem(data['ability'] as Map<String, dynamic>),
				isHidden: data['is_hidden'] as bool?,
				slot: data['slot'] as int?,
			);

	Map<String, dynamic> toPokemonItem() => {
				'ability': ability?.toPokemonItem(),
				'is_hidden': isHidden,
				'slot': slot,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Ability].
	factory Ability.fromJson(String data) {
		return Ability.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Ability] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
