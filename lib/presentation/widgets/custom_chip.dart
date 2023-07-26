import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({required this.animals});

  final List<String> animals;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Chip(
          labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          backgroundColor: Colors.white,
          shape: const StadiumBorder(
              side: BorderSide(color: Colors.black26, width: 1.0)),
          label: Text(
            animals[index],
            style: const TextStyle(fontWeight: FontWeight.w300),
          ),
        );
      },
      itemCount: animals.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 10,
        );
      },
    );
  }
}
