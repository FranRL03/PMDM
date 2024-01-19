import 'dart:convert';

class VersionGroup {
	String? name;
	String? url;

	VersionGroup({this.name, this.url});

	factory VersionGroup.fromPokemonItem(Map<String, dynamic> data) {
		return VersionGroup(
			name: data['name'] as String?,
			url: data['url'] as String?,
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'name': name,
				'url': url,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VersionGroup].
	factory VersionGroup.fromJson(String data) {
		return VersionGroup.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [VersionGroup] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
