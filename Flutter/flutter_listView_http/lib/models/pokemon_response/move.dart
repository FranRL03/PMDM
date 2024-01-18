import 'dart:convert';

import 'move.dart';
import 'version_group_detail.dart';

class Move {
	Move? move;
	List<VersionGroupDetail>? versionGroupDetails;

	Move({this.move, this.versionGroupDetails});

	factory Move.fromPokemonResponse(Map<String, dynamic> data) => Move(
				move: data['move'] == null
						? null
						: Move.fromPokemonResponse(data['move'] as Map<String, dynamic>),
				versionGroupDetails: (data['version_group_details'] as List<dynamic>?)
						?.map((e) => VersionGroupDetail.fromPokemonResponse(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toPokemonResponse() => {
				'move': move?.toPokemonResponse(),
				'version_group_details': versionGroupDetails?.map((e) => e.toPokemonResponse()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Move].
	factory Move.fromJson(String data) {
		return Move.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Move] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
