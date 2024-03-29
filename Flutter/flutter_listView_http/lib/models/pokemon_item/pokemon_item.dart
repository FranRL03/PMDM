import 'dart:convert';

import 'ability.dart';
import 'form.dart';
import 'game_index.dart';
import 'held_item.dart';
import 'move.dart';
import 'species.dart';
import 'sprites.dart';
import 'stat.dart';
import 'type.dart';

class PokemonOne {
  List<Ability>? abilities;
  int? baseExperience;
  List<Form>? forms;
  List<GameIndex>? gameIndices;
  int? height;
  List<HeldItem>? heldItems;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  List<Move>? moves;
  String? name;
  int? order;
  List<dynamic>? pastAbilities;
  List<dynamic>? pastTypes;
  Species? species;
  Sprites? sprites;
  List<Stat>? stats;
  List<Type>? types;
  int? weight;

  PokemonOne({
    this.abilities,
    this.baseExperience,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    this.name,
    this.order,
    this.pastAbilities,
    this.pastTypes,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  factory PokemonOne.fromPokemonItem(Map<String, dynamic> data) {
    return PokemonOne(
      abilities: (data['abilities'] as List<dynamic>?)
          ?.map((e) => Ability.fromPokemonItem(e as Map<String, dynamic>))
          .toList(),
      baseExperience: data['base_experience'] as int?,
      forms: (data['forms'] as List<dynamic>?)
          ?.map((e) => Form.fromPokemonItem(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (data['game_indices'] as List<dynamic>?)
          ?.map((e) => GameIndex.fromPokemonItem(e as Map<String, dynamic>))
          .toList(),
      height: data['height'] as int?,
      heldItems: (data['held_items'] as List<dynamic>?)
          ?.map((e) => HeldItem.fromPokemonItem(e as Map<String, dynamic>))
          .toList(),
      id: data['id'] as int?,
      isDefault: data['is_default'] as bool?,
      locationAreaEncounters: data['location_area_encounters'] as String?,
      moves: (data['moves'] as List<dynamic>?)
          ?.map((e) => Move.fromPokemonItem(e as Map<String, dynamic>))
          .toList(),
      name: data['name'] as String?,
      order: data['order'] as int?,
      pastAbilities: data['past_abilities'] as List<dynamic>?,
      pastTypes: data['past_types'] as List<dynamic>?,
      species: data['species'] == null
          ? null
          : Species.fromPokemonItem(data['species'] as Map<String, dynamic>),
      sprites: data['sprites'] == null
          ? null
          : Sprites.fromPokemonItem(data['sprites'] as Map<String, dynamic>),
      stats: (data['stats'] as List<dynamic>?)
          ?.map((e) => Stat.fromPokemonItem(e as Map<String, dynamic>))
          .toList(),
      types: (data['types'] as List<dynamic>?)
          ?.map((e) => Type.fromPokemonItem(e as Map<String, dynamic>))
          .toList(),
      weight: data['weight'] as int?,
    );
  }

  Map<String, dynamic> toPokemonItem() => {
        'abilities': abilities?.map((e) => e.toPokemonItem()).toList(),
        'base_experience': baseExperience,
        'forms': forms?.map((e) => e.toPokemonItem()).toList(),
        'game_indices': gameIndices?.map((e) => e.toPokemonItem()).toList(),
        'height': height,
        'held_items': heldItems?.map((e) => e.toPokemonItem()).toList(),
        'id': id,
        'is_default': isDefault,
        'location_area_encounters': locationAreaEncounters,
        'moves': moves?.map((e) => e.toPokemonItem()).toList(),
        'name': name,
        'order': order,
        'past_abilities': pastAbilities,
        'past_types': pastTypes,
        'species': species?.toPokemonItem(),
        'sprites': sprites?.toPokemonItem(),
        'stats': stats?.map((e) => e.toPokemonItem()).toList(),
        'types': types?.map((e) => e.toPokemonItem()).toList(),
        'weight': weight,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PokemonItem].
  factory PokemonOne.fromJson(String data) {
    return PokemonOne.fromPokemonItem(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PokemonItem] to a JSON string.
  String toJson() => json.encode(toPokemonItem());
}
