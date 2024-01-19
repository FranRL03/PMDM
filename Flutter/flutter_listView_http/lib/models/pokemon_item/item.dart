import 'dart:convert';

class Item {
	String? name;
	String? url;

	Item({this.name, this.url});

	factory Item.fromPokemonItem(Map<String, dynamic> data) => Item(
				name: data['name'] as String?,
				url: data['url'] as String?,
			);

	Map<String, dynamic> toPokemonItem() => {
				'name': name,
				'url': url,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
	factory Item.fromJson(String data) {
		return Item.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
