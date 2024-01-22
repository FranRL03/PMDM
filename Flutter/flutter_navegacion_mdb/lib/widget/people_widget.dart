import 'package:flutter/material.dart';
import 'package:flutter_navegacion_mdb/widget/people_item.dart';
import '../models/people_item/result.dart';



class PeopleWidget extends StatefulWidget {
  const PeopleWidget({super.key, required this.peopleList});

  final List<Result> peopleList;

  @override
  State<PeopleWidget> createState() => _PeopleWidgetState();
}

class _PeopleWidgetState extends State<PeopleWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: widget.peopleList.length,
          itemBuilder: (context, index) {
            // return PeopleItem(result: widget.peopleItem.results![index]);
            return PeopleItem(result: widget.peopleList[index]);
          });
  }
}