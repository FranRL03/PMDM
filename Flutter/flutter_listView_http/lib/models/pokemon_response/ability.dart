import 'dart:convert';

import 'ability.dart';

class Ability {
	Ability? ability;
	bool? isHidden;
	int? slot;

	Ability({this.ability, this.isHidden, this.slot});

	factory Ability.fromPokemonResponse(Map<String, dynamic> data) => Ability(
				ability: data['ability'] == null
						? null
						: Ability.fromPokemonResponse(data['ability'] as Map<String, dynamic>),
				isHidden: data['is_hidden'] as bool?,
				slot: data['slot'] as int?,
			);

	Map<String, dynamic> toPokemonResponse() => {
				'ability': ability?.toPokemonResponse(),
				'is_hidden': isHidden,
				'slot': slot,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Ability].
	factory Ability.fromJson(String data) {
		return Ability.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Ability] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
