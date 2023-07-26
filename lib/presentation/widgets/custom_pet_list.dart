import 'package:flutter/material.dart';

import '../screens/detail.dart';

class CustomPetsList extends StatelessWidget {
  CustomPetsList({required this.pets});
  List<Map<String, dynamic>> pets;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final price = (pets[index]['price'] == 'Adoptame') ? '' : '\$';

        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(pets: pets[index]),
                  ),
                );
              }, // Image tapped
              splashColor: Colors.white10, // Splash color over image
              child: CircleAvatar(
                backgroundImage: AssetImage(pets[index]['imageUrl']),
                radius: 120.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 250.0,
              child: Column(
                children: [
                  Text(
                    pets[index]['description'],
                    style: const TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '$price${pets[index]['price']}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        );
      },
      itemCount: pets.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 20);
      },
    );
  }
}
