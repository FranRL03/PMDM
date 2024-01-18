import 'dart:convert';

class Form {
	String? name;
	String? url;

	Form({this.name, this.url});

	factory Form.fromPokemonResponse(Map<String, dynamic> data) => Form(
				name: data['name'] as String?,
				url: data['url'] as String?,
			);

	Map<String, dynamic> toPokemonResponse() => {
				'name': name,
				'url': url,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Form].
	factory Form.fromJson(String data) {
		return Form.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Form] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
