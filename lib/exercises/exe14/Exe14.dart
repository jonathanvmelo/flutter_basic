import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe14/productModel.dart';
import 'package:flutter_project/exercises/exe14/product_detail.dart';
import 'package:flutter_project/exercises/exe14/product_repository.dart';
import 'package:flutter_project/exercises/exe14/product_tile.dart';
import 'package:intl/intl.dart';

class Exe14 extends StatefulWidget {
  const Exe14({super.key});

  @override
  State<Exe14> createState() => _Exe14State();
}

class _Exe14State extends State<Exe14> {
  final ProductRepository productsList = ProductRepository();

  Future<ProductModel?> details() async {
    var detailProduct = await Navigator.of(context).pushNamed('/exe14_product_detail');
    if (!mounted) return null;
    return detailProduct as ProductModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 14"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: productsList.products.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(

                  ),
                  ProductTile(
                    product: this.productsList.products[index],
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(productModel: productsList.products[index]),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
