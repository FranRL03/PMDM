import 'dart:convert';

import 'move.dart';
import 'version_group_detail.dart';

class Move {
	Move? move;
	List<VersionGroupDetail>? versionGroupDetails;

	Move({this.move, this.versionGroupDetails});

	factory Move.fromPokemonItem(Map<String, dynamic> data) => Move(
				move: data['move'] == null
						? null
						: Move.fromPokemonItem(data['move'] as Map<String, dynamic>),
				versionGroupDetails: (data['version_group_details'] as List<dynamic>?)
						?.map((e) => VersionGroupDetail.fromPokemonItem(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toPokemonItem() => {
				'move': move?.toPokemonItem(),
				'version_group_details': versionGroupDetails?.map((e) => e.toPokemonItem()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Move].
	factory Move.fromJson(String data) {
		return Move.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Move] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
