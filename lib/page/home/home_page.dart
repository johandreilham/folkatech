import 'package:flutter/material.dart';
import 'package:folkatech_app/data/model/product.dart';
import 'package:folkatech_app/data/source/source_product.dart';
import 'package:folkatech_app/page/menu/menu_page.dart';
import 'package:folkatech_app/page/product/list_product_page.dart';
import 'package:folkatech_app/widget/navbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> listProduct = [];
  SourceProduct product = SourceProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Folkatech Food'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 21,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const MenuPage();
              },
            ),
          );
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.apps),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //membuat tampilan navigasi bar di class yang terpisah
      bottomNavigationBar: const NavbarWidget(),
      //widget untuk swipe on refresh
      body: RefreshIndicator(
        onRefresh: () async {
          //untuk menampilkan data yang berhasil di refresh pada console
          print('Refresh Data List Product');
          listProduct = await product.getData();
        },
        child: ListView(
          padding: const EdgeInsets.only(left: 20, top: 20),
          children: [
            const Text(
              'Menu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              //membuat tampilan list product di class yang terpisah
              child: const ListProductPage(),
            )
          ],
        ),
      ),
    );
  }
}
