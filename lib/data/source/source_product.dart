import 'dart:convert';

import 'package:folkatech_app/data/config/api.dart';
import 'package:folkatech_app/data/model/product.dart';
import 'package:http/http.dart' as http;

class SourceProduct {
  Future getData() async {
    try {
      //ambil data dari api 
      final response = await http.get(Uri.parse(Api.baseUrl));

      //kondisi apabila response success
      if (response.statusCode == 200) {
        //untuk menampilkan responde body yang dihasilkan
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Product> product = it.map((e) => Product.fromJson(e)).toList();
        return product;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
