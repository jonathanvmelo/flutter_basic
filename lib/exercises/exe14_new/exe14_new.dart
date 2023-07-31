import 'package:devs2blu_refactor/constants.dart';
import 'package:devs2blu_refactor/exercises/exe14/product_card_widget.dart';
import 'package:devs2blu_refactor/exercises/exe14/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exe14 extends StatefulWidget {
  Exe14({super.key});

  @override
  State<Exe14> createState() => _Exe14State();
}

class _Exe14State extends State<Exe14> {
  List<String> catList = [
    'Todas',
    'Feminino',
    'Masculino',
    'Infantil',
    'Tênis corrida',
    'Tênis',
    'Chinelos e Sandálias',
    'Botas',
    'Chuteiras'
  ];

  List<ProductModel> imgList = [
    ProductModel(
        imgUrl: 'assets/Black Pant.png',
        title: 'Calça feminina',
        price: 199.90),
    ProductModel(
        imgUrl: 'assets/Black T-Shirt.png',
        title: 'Camiseta feminina',
        price: 99.90),
    ProductModel(
        imgUrl: 'assets/Ladies Bag.png', title: 'Bolsa feminina', price: 99.90),
    ProductModel(
        imgUrl: 'assets/Warm Jacket.png',
        title: 'Jaqueta feminina',
        price: 99.90),
    ProductModel(
        imgUrl: 'assets/Black Pant.png',
        title: 'Calça feminina',
        price: 199.90),
    ProductModel(
        imgUrl: 'assets/Black T-Shirt.png',
        title: 'Camiseta feminina',
        price: 99.90),
    ProductModel(
        imgUrl: 'assets/Ladies Bag.png', title: 'Bolsa feminina', price: 99.90),
    ProductModel(
        imgUrl: 'assets/Warm Jacket.png',
        title: 'Jaqueta feminina',
        price: 99.90),
    ProductModel(
        imgUrl: 'assets/Black Pant.png',
        title: 'Calça feminina',
        price: 199.90),
    ProductModel(
      imgUrl: 'assets/Black T-Shirt.png',
      title: 'Camiseta feminina',
      price: 99.90,
    ),
    ProductModel(
        imgUrl: 'assets/Ladies Bag.png', title: 'Bolsa feminina', price: 99.90),
    ProductModel(
        imgUrl: 'assets/Warm Jacket.png',
        title: 'Jaqueta feminina',
        price: 99.90),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // ignore: sized_box_for_whitespace
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200]),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 30,
                            ),
                            label: Text('Encontre seu produto'),
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.notifications)),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    'https://static.vecteezy.com/ti/vetor-gratis/p1/9011648-desconto-de-50-na-etiqueta-vetor.jpg',
                    width: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      for (int i = 0; i < catList.length; i++)
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 10),
                          decoration: BoxDecoration(
                              color: catList[i] == 'Todas'
                                  ? Colors.amber[700]
                                  : Colors.grey[200],
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(catList[i],
                              style: TextStyle(
                                  color: catList[i] == 'Todas'
                                      ? Colors.white
                                      : Colors.black)),
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 120,
                ),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 75,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1),
                  itemCount: imgList.length,
                  itemBuilder: (context, index) {
                    return OverflowBox(
                      maxHeight: 290.0 + 70.0,
                      child: ProductCard(
                        productModel: imgList[index],
                        onPressed: () {
                          setState(() {
                            imgList[index].isFavourite =
                                !imgList[index].isFavourite;
                          });
                        },
                      ),
                    );
                  },
                ),
              )
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200],
        iconSize: 30,
        selectedItemColor: Colors.amber[700],
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (value) {},
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart_fill), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_fill), label: 'Perfil'),
        ],
      ),
    );
  }
}
