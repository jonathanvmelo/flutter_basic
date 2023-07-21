import 'package:flutter/material.dart';
import 'package:flutter_project/exercises/exe14/productModel.dart';


class ProductTile extends StatelessWidget {
  ProductModel model;
  void Function() onTap;

  ProductTile(this.model, this.onTap);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,

    );
  }
}


