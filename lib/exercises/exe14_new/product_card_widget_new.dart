// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:devs2blu_refactor/exercises/exe14/product_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  final VoidCallback onPressed;
  const ProductCard({
    Key? key,
    required this.productModel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 200,
            height: 160,
            color: Colors.grey[200],
            child: Stack(
              children: [
                InkWell(
                  child: Image.asset(
                    productModel.imgUrl,
                    fit: BoxFit.cover,
                    height: 230,
                  ),
                ),
                Positioned(
                  left: 125,
                  top: 0,
                  child: Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite_rounded,
                        color: productModel.isFavourite
                            ? Colors.red
                            : Colors.grey[500],
                      ),
                      onPressed: onPressed,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.title,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  NumberFormat.simpleCurrency(locale: 'pt-BR', decimalDigits: 2)
                      .format(productModel.price),
                  style: const TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
