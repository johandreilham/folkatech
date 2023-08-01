import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Colors.transparent,
      elevation: 10,
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width / 2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      SizedBox(height: 4),
                      Icon(
                        Icons.home,
                        color: Colors.red,
                      ),
                      SizedBox(height: 1),
                      Text(
                        'Home',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      SizedBox(height: 4),
                      Icon(
                        Icons.search,
                        color: Colors.red,
                      ),
                      SizedBox(height: 1),
                      Text(
                        'Search',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width / 2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      SizedBox(height: 4),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.red,
                      ),
                      SizedBox(height: 1),
                      Text(
                        'My Cart',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      SizedBox(height: 4),
                      Icon(
                        Icons.person_outline,
                        color: Colors.red,
                      ),
                      SizedBox(height: 1),
                      Text(
                        'Profile',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
