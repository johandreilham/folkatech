import 'package:flutter/material.dart';
import 'package:folkatech_app/data/model/product.dart';
import 'package:folkatech_app/data/source/source_product.dart';
import 'package:folkatech_app/page/product/detail_product_page.dart';

class ListProductPage extends StatefulWidget {
  const ListProductPage({super.key});

  @override
  State<ListProductPage> createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage> {
  List<Product> listProduct = [];
  SourceProduct product = SourceProduct();

  //fungsi untuk mengambil data product
  getData() async {
    listProduct = await product.getData();
    setState(() {});
  }

  //inisialisasikan fungsi getData pada initState
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      //membuat card dengan widget terpisah dan memanggil card sebanyak [index] yang tersedia
                      return _buildCard(listProduct[index], context);
                    },
                    itemCount: listProduct.length,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
    );
  }
}

Widget _buildCard(Product dataProduct, context) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: InkWell(
      //fungsi untuk berpindah ke datail product dengan membawa dataProduct
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailProductPage(
                product: dataProduct,
              );
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              spreadRadius: 3,
              blurRadius: 5,
              color: Colors.grey.withOpacity(0.3),
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Hero(
              tag: dataProduct.cover ?? '',
              child: Container(
                height: 140,
                width: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: NetworkImage(dataProduct.cover ?? ''),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Text(
              dataProduct.name ?? '',
              style: const TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Rp. ${dataProduct.price ?? ''}',
              style: const TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
