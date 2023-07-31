// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  String imgUrl;
  String title;
  String? description;
  double price;
  bool isFavourite;

  ProductModel({
    required this.imgUrl,
    required this.title,
    required this.price,
    this.description,
    this.isFavourite = false,
  });
}
