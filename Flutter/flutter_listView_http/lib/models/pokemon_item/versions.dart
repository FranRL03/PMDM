import 'dart:convert';

import 'generation_i.dart';
import 'generation_ii.dart';
import 'generation_iii.dart';
import 'generation_iv.dart';
import 'generation_v.dart';
import 'generation_vi.dart';
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

  factory Versions.fromPokemonItem(Map<String, dynamic> data) => Versions(
        generationI: data['generation-i'] == null
            ? null
            : GenerationI.fromPokemonItem(
                data['generation-i'] as Map<String, dynamic>),
        generationIi: data['generation-ii'] == null
            ? null
            : GenerationIi.fromPokemonItem(
                data['generation-ii'] as Map<String, dynamic>),
        generationIii: data['generation-iii'] == null
            ? null
            : GenerationIii.fromPokemonItem(
                data['generation-iii'] as Map<String, dynamic>),
        generationIv: data['generation-iv'] == null
            ? null
            : GenerationIv.fromPokemonItem(
                data['generation-iv'] as Map<String, dynamic>),
        generationV: data['generation-v'] == null
            ? null
            : GenerationV.fromPokemonItem(
                data['generation-v'] as Map<String, dynamic>),
        // generationVi: data['generation-vi'] == null
        // 		? null
        // 		: GenerationVi.fromPokemonItem(data['generation-vi'] as Map<String, dynamic>),
        generationVii: data['generation-vii'] == null
            ? null
            : GenerationVii.fromPokemonItem(
                data['generation-vii'] as Map<String, dynamic>),
        generationViii: data['generation-viii'] == null
            ? null
            : GenerationViii.fromPokemonItem(
                data['generation-viii'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toPokemonItem() => {
        'generation-i': generationI?.toPokemonItem(),
        'generation-ii': generationIi?.toPokemonItem(),
        'generation-iii': generationIii?.toPokemonItem(),
        'generation-iv': generationIv?.toPokemonItem(),
        'generation-v': generationV?.toPokemonItem(),
        // 'generation-vi': generationVi?.toPokemonItem(),
        'generation-vii': generationVii?.toPokemonItem(),
        'generation-viii': generationViii?.toPokemonItem(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Versions].
  factory Versions.fromJson(String data) {
    return Versions.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Versions] to a JSON string.
  String toJson() => json.encode(toPokemonItem());
}
