import 'dart:convert';

import 'icons.dart';
import 'ultra_sun_ultra_moon.dart';

class GenerationVii {
	Icons? icons;
	UltraSunUltraMoon? ultraSunUltraMoon;

	GenerationVii({this.icons, this.ultraSunUltraMoon});

	factory GenerationVii.fromPokemonResponse(Map<String, dynamic> data) {
		return GenerationVii(
			icons: data['icons'] == null
						? null
						: Icons.fromPokemonResponse(data['icons'] as Map<String, dynamic>),
			ultraSunUltraMoon: data['ultra-sun-ultra-moon'] == null
						? null
						: UltraSunUltraMoon.fromPokemonResponse(data['ultra-sun-ultra-moon'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'icons': icons?.toPokemonResponse(),
				'ultra-sun-ultra-moon': ultraSunUltraMoon?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationVii].
	factory GenerationVii.fromJson(String data) {
		return GenerationVii.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationVii] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
