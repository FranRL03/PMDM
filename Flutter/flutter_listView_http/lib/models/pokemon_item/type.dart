import 'dart:convert';

import 'type.dart';

class Type {
	int? slot;
	Type? type;

	Type({this.slot, this.type});

	factory Type.fromPokemonItem(Map<String, dynamic> data) => Type(
				slot: data['slot'] as int?,
				type: data['type'] == null
						? null
						: Type.fromPokemonItem(data['type'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toPokemonItem() => {
				'slot': slot,
				'type': type?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Type].
	factory Type.fromJson(String data) {
		return Type.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Type] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
