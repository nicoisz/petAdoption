import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData iconData;
  final String buttonText;
  final Color backgroundColor;

  const CircleButton(
      {Key? key,
      required this.iconData,
      required this.buttonText,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'home');
      },
      child: Container(
        width: 160,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //TODO: circle button no agarra el navigator pushnamed
            InkResponse(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(2.0),
                width: size,
                height: size,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(buttonText)
          ],
        ),
      ),
    );
  }
}
