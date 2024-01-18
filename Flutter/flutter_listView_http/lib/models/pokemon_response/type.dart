import 'dart:convert';

import 'type.dart';

class Type {
	int? slot;
	Type? type;

	Type({this.slot, this.type});

	factory Type.fromPokemonResponse(Map<String, dynamic> data) => Type(
				slot: data['slot'] as int?,
				type: data['type'] == null
						? null
						: Type.fromPokemonResponse(data['type'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toPokemonResponse() => {
				'slot': slot,
				'type': type?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Type].
	factory Type.fromJson(String data) {
		return Type.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Type] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
