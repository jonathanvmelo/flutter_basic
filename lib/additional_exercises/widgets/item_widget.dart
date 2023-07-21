import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      //physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("-50%",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  ),
                  Icon(Icons.favorite_border, color: Colors.red,),
                ],
              ),
              InkWell(
                onTap: () {

                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.network("https://pyxis.nymag.com/v1/imgs/7a7/770/c344d0408e2349089857ce27a76f1be503-Hackers.2x.rsquare.w600.jpg",
                  height: 120, width: 120,),
                ),
              ),
             Container(
               padding: EdgeInsets.only(bottom: 8),
               alignment: Alignment.centerLeft,
             )
            ],
          ),
        )
      ],
    );
  }
}
