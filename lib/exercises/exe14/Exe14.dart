import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe14/productModel.dart';
import 'package:flutter_project/exercises/exe14/product_tile.dart';

class Exe14 extends StatefulWidget {
  const Exe14({super.key});

  @override
  State<Exe14> createState() => _Exe14State();
}

List<ProductModel> products = [
  ProductModel(url: "", name: "Fusca", description: "description", value: 10000.00),
  ProductModel(url: "", name: "Fusca", description: "description", value: 10000.00),
  ProductModel(url: "", name: "Fusca", description: "description", value: 10000.00),
  ProductModel(url: "", name: "Fusca", description: "description", value: 10000.00),
];

class _Exe14State extends State<Exe14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 14"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductTile(products[index], () {

            });
          },
        ),
      ),
    );
  }
}
