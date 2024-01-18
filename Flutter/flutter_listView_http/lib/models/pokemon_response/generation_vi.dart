// import 'dart:convert';

// import 'omegaruby_alphasapphire.dart';
// import 'xy.dart';

// class GenerationVi {
// 	OmegarubyAlphasapphire? omegarubyAlphasapphire;
// 	XY? xY;

// 	GenerationVi({this.omegarubyAlphasapphire, this.xY});

// 	factory GenerationVi.fromPokemonResponse(Map<String, dynamic> data) {
// 		return GenerationVi(
// 			omegarubyAlphasapphire: data['omegaruby-alphasapphire'] == null
// 						? null
// 						: OmegarubyAlphasapphire.fromPokemonResponse(data['omegaruby-alphasapphire'] as Map<String, dynamic>),
// 			xY: data['x-y'] == null
// 						? null
// 						: Xy.fromPokemonResponse(data['x-y'] as Map<String, dynamic>),
// 		);
// 	}



// 	Map<String, dynamic> toPokemonResponse() => {
// 				'omegaruby-alphasapphire': omegarubyAlphasapphire?.toPokemonResponse(),
// 				'x-y': xY?.toPokemonResponse(),
// 			};

//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [GenerationVi].
// 	factory GenerationVi.fromJson(String data) {
// 		return GenerationVi.fromPokemonResponse(json.decode(data) as Map<String, dynamic>);
// 	}
//   /// `dart:convert`
//   ///
//   /// Converts [GenerationVi] to a JSON string.
// 	String toJson() => json.encode(toPokemonResponse());
// }
