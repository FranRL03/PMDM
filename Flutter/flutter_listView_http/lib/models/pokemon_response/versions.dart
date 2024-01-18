import 'dart:convert';

import 'generation_i.dart';
import 'generation_ii.dart';
import 'generation_iii.dart';
import 'generation_iv.dart';
import 'generation_v.dart';
import 'generation_vii.dart';
import 'generation_viii.dart';

class Versions {
	GenerationI? generationI;
	GenerationIi? generationIi;
	GenerationIii? generationIii;
	GenerationIv? generationIv;
	GenerationV? generationV;
	// GenerationVi? generationVi;
	GenerationVii? generationVii;
	GenerationViii? generationViii;

	Versions({
		this.generationI, 
		this.generationIi, 
		this.generationIii, 
		this.generationIv, 
		this.generationV, 
		// this.generationVi, 
		this.generationVii, 
		this.generationViii, 
	});

	factory Versions.fromPokemonResponse(Map<String, dynamic> data) {
		return Versions(
			generationI: data['generation-i'] == null
						? null
						: GenerationI.fromPokemonResponse(data['generation-i'] as Map<String, dynamic>),
			generationIi: data['generation-ii'] == null
						? null
						: GenerationIi.fromPokemonResponse(data['generation-ii'] as Map<String, dynamic>),
			generationIii: data['generation-iii'] == null
						? null
						: GenerationIii.fromPokemonResponse(data['generation-iii'] as Map<String, dynamic>),
			generationIv: data['generation-iv'] == null
						? null
						: GenerationIv.fromPokemonResponse(data['generation-iv'] as Map<String, dynamic>),
			generationV: data['generation-v'] == null
						? null
						: GenerationV.fromPokemonResponse(data['generation-v'] as Map<String, dynamic>),
			// generationVi: data['generation-vi'] == null
						// ? null
						// : GenerationVi.fromPokemonResponse(data['generation-vi'] as Map<String, dynamic>),
			generationVii: data['generation-vii'] == null
						? null
						: GenerationVii.fromPokemonResponse(data['generation-vii'] as Map<String, dynamic>),
			generationViii: data['generation-viii'] == null
						? null
						: GenerationViii.fromPokemonResponse(data['generation-viii'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toPokemonResponse() => {
				'generation-i': generationI?.toPokemonResponse(),
				'generation-ii': generationIi?.toPokemonResponse(),
				'generation-iii': generationIii?.toPokemonResponse(),
				'generation-iv': generationIv?.toPokemonResponse(),
				'generation-v': generationV?.toPokemonResponse(),
				// 'generation-vi': generationVi?.toPokemonResponse(),
				'generation-vii': generationVii?.toPokemonResponse(),
				'generation-viii': generationViii?.toPokemonResponse(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Versions].
	factory Versions.fromJson(String data) {
		return Versions.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Versions] to a JSON string.
	String toJson() => json.encode(toPokemonResponse());
}
