import 'dart:convert';

import 'item.dart';
import 'version_detail.dart';

class HeldItem {
	Item? item;
	List<VersionDetail>? versionDetails;

	HeldItem({this.item, this.versionDetails});

	factory HeldItem.fromPokemonItem(Map<String, dynamic> data) => HeldItem(
				item: data['item'] == null
						? null
						: Item.fromPokemonItem(data['item'] as Map<String, dynamic>),
				versionDetails: (data['version_details'] as List<dynamic>?)
						?.map((e) => VersionDetail.fromPokemonItem(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toPokemonItem() => {
				'item': item?.toPokemonItem(),
				'version_details': versionDetails?.map((e) => e.toPokemonItem()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [HeldItem].
	factory HeldItem.fromJson(String data) {
		return HeldItem.fromPokemonItem(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [HeldItem] to a JSON string.
	String toJson() => json.encode(toPokemonItem());
}
