import 'dart:convert';

class Version {
	String? name;
	String? url;

	Version({this.name, this.url});

	factory Version.fromPokemonItem(Map<String, dynamic> data) => Version(
				name: data['name'] as String?,
				url: data['url'] as String?,
			);

	Map<String, dynamic> toPokemonItem() => {
				'name': name,
				'url': url,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Version].
	factory Version.fromJson(String data) {
		return Version.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Version] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
