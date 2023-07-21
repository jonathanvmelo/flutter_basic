
import 'package:flutter_project/exercises/exe14/productModel.dart';
import 'package:flutter_project/exercises/exe14/product_tile.dart';

class ProductRepository{

  List<ProductModel> products = [
    ProductModel(
        urlImage: "https://motortudo.com/wp-content/uploads/2021/09/Fusca-1972-Fusca-antigo-30.jpg",
        name: "Fusca",
        description: "Fusca 1500cc",
        value: 10000.00),
    ProductModel(
        urlImage: "https://revistafullpower.com.br/wp-content/uploads/2016/09/opala-ss-fullpower-1024x683.jpg",
        name: "Opala SS",
        description: "6 cilindros e 400cv", value: 35000.00),
    ProductModel(
        urlImage: "https://robbreport.com/wp-content/uploads/2022/05/hellucination07.jpg?w=1000",
        name: "Dodge Charger",
        description: "1000HP", value: 54300.00),
    ProductModel(
        urlImage: "https://autoentusiastas.com.br/ae/wp-content/uploads/2018/10/model-t.jpg",
        name: "Ford T", description: "20cv e velocidade máxima de 72km/h", value: 37599.00),
  ];
}
