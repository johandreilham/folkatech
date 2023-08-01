import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Features',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 110,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              //membuat icon menu menggunakan widget secara terpisah
              menuLiveShow(),
              menuLiveClass(),
              menuECourse(),
              menuComunity(),
              menuMyProfile(),
              menuSavedCourse(),
              menuRecentCourse(),
              menuMyList(),
              menuMyCart(),
              menuHistory(),
              menuMarketplace(),
            ],
          )
        ],
      ),
    );
  }
}

Widget menuLiveShow() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.live_tv,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Live Show',
          style: TextStyle(fontSize: 14),
        )
      ],
    ),
  );
}

Widget menuLiveClass() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.tv_sharp,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Live Class',
          style: TextStyle(fontSize: 14),
        )
      ],
    ),
  );
}

Widget menuECourse() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.menu_book,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'E-Course',
          style: TextStyle(fontSize: 14),
        )
      ],
    ),
  );
}

Widget menuComunity() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.group_work,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Comunity',
          style: TextStyle(fontSize: 14),
        )
      ],
    ),
  );
}

Widget menuMyProfile() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'My Profile',
          style: TextStyle(fontSize: 14),
        )
      ],
    ),
  );
}

Widget menuSavedCourse() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.save_as_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: const [
            Text(
              'Saved',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Course',
              style: TextStyle(fontSize: 14),
            ),
          ],
        )
      ],
    ),
  );
}

Widget menuRecentCourse() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.art_track_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: const [
            Text(
              'Recent',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'Course',
              style: TextStyle(fontSize: 14),
            ),
          ],
        )
      ],
    ),
  );
}

Widget menuMyList() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.list_sharp,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'My List',
          style: TextStyle(fontSize: 14),
        )
      ],
    ),
  );
}

Widget menuMyCart() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'My Cart',
          style: TextStyle(fontSize: 14),
        )
      ],
    ),
  );
}

Widget menuHistory() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.assignment_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'History',
          style: TextStyle(fontSize: 14),
        )
      ],
    ),
  );
}

Widget menuMarketplace() {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(100)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.shop_two_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Column(
          children: const [
            Text(
              'Marketplace',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              '(Beta)',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ],
    ),
  );
}
