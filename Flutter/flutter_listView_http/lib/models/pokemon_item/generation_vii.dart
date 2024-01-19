import 'dart:convert';

import 'icons.dart';
import 'ultra_sun_ultra_moon.dart';

class GenerationVii {
	Icons? icons;
	UltraSunUltraMoon? ultraSunUltraMoon;

	GenerationVii({this.icons, this.ultraSunUltraMoon});

	factory GenerationVii.fromPokemonItem(Map<String, dynamic> data) {
		return GenerationVii(
			icons: data['icons'] == null
						? null
						: Icons.fromPokemonItem(data['icons'] as Map<String, dynamic>),
			ultraSunUltraMoon: data['ultra-sun-ultra-moon'] == null
						? null
						: UltraSunUltraMoon.fromPokemonItem(data['ultra-sun-ultra-moon'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonItem() => {
				'icons': icons?.toPokemonItem(),
				'ultra-sun-ultra-moon': ultraSunUltraMoon?.toPokemonItem(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GenerationVii].
	factory GenerationVii.fromJson(String data) {
		return GenerationVii.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GenerationVii] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
