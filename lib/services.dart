import 'package:http/http.dart'as http;
import 'package:onlinestore/model.dart';
import 'dart:convert';

class ProductApi{
    static Future<List<Product>> fetchproduct() async {
    const url='https://fakestoreapi.com/products';
    final uri=Uri.parse(url);
    http.get(uri);
    final response =await http.get(uri);
    final body= response.body;
    final json=jsonDecode(body);
    final results=json as List<dynamic>;
    final products = results.map((e){
      return Product(title: e['title'], price: e['price'].toDouble(), description:e['description'] , image: e['image']);
    }).toList();
     return products;
  }
}