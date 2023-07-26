import 'package:flutter/material.dart';

class CustomCategories extends StatelessWidget {
  CustomCategories({super.key, required this.categories});
  List<Map<String, dynamic>> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                categories[index]['title'],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                categories[index]['imageUrl'],
                height: 200,
                width: 250,
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: 3);
  }
}
