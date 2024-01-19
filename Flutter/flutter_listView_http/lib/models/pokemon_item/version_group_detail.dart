import 'dart:convert';

import 'move_learn_method.dart';
import 'version_group.dart';

class VersionGroupDetail {
	int? levelLearnedAt;
	MoveLearnMethod? moveLearnMethod;
	VersionGroup? versionGroup;

	VersionGroupDetail({
		this.levelLearnedAt, 
		this.moveLearnMethod, 
		this.versionGroup, 
	});

	factory VersionGroupDetail.fromPokemonItem(Map<String, dynamic> data) {
		return VersionGroupDetail(
			levelLearnedAt: data['level_learned_at'] as int?,
			moveLearnMethod: data['move_learn_method'] == null
						? null
						: MoveLearnMethod.fromPokemonItem(data['move_learn_method'] as Map<String, dynamic>),
			versionGroup: data['version_group'] == null
						? null
						: VersionGroup.fromPokemonItem(data['version_group'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'level_learned_at': levelLearnedAt,
				'move_learn_method': moveLearnMethod?.toPokemonItem(),
				'version_group': versionGroup?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VersionGroupDetail].
	factory VersionGroupDetail.fromJson(String data) {
		return VersionGroupDetail.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [VersionGroupDetail] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
