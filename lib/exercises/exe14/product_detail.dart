import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe14/productModel.dart';

class ProductDetail extends StatelessWidget {
  final ProductModel? productModel;

  ProductDetail({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (productModel != null) {
      return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Image.network(productModel!.urlImage),
            Text(productModel!.name),
            Text(productModel!.description),
            Text('${productModel!.value}'),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("Produto não encontrado"),
        ),
      );
    }
  }
}