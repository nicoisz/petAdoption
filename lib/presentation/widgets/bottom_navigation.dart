import 'package:flutter/material.dart';

class BottomMenuNavigation extends StatefulWidget {
  const BottomMenuNavigation({super.key, required this.indexPage});
  final int indexPage;
  @override
  State<BottomMenuNavigation> createState() => _BottomMenuNavigationState();
}

class _BottomMenuNavigationState extends State<BottomMenuNavigation> {
  var currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    currentIndex = widget.indexPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(20),
      height: size.width * .155,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            offset: const Offset(0, 0),
          )
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: ListView.builder(
        itemCount: listOfIcons.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: size.width * .2),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(
              () {
                currentIndex = index;
                if (currentIndex == 0) {
                  Navigator.pushNamed(context, 'home');
                } else if (currentIndex == 1) {
                  Navigator.pushNamed(context, 'liked');
                } else {
                  Navigator.pushNamed(context, 'profile');
                }
              },
            );
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.fastLinearToSlowEaseIn,
                margin: EdgeInsets.only(
                  bottom: index == currentIndex ? 0 : size.width * .029,
                  right: size.width * .022,
                  left: size.width * .022,
                ),
                width: size.width * .128,
                height: index == currentIndex ? size.width * .014 : 0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10),
                  ),
                ),
              ),
              Icon(
                listOfIcons[index],
                size: size.width * .076,
                color: index == currentIndex
                    ? Colors.white
                    : const Color.fromARGB(255, 116, 183, 174),
              ),
              SizedBox(height: size.width * .03),
            ],
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.pets_outlined,
    Icons.person_rounded,
  ];
}
