import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe14/productModel.dart';
import 'package:intl/intl.dart';

class ProductTile extends StatelessWidget {
  ProductModel product;
  void Function() onTap;

  ProductTile({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(product.urlImage, height: 110, width: 100,),
      //Image.asset(product.urlImage),
      title: Text(product.name),
      subtitle: Text(product.description),
      trailing: Text(
          NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2)
              .format(product.value),style: TextStyle(
        fontSize: 18
      )),
      onTap: onTap,
    );
  }
}


