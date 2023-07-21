import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort,
          size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(padding: EdgeInsets.only(left: 20,),
            child: Text('Shop', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4C53A5),
            ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(8),
            ),
            badgeContent: Text("3", style: TextStyle(color: Colors.white),),
            child: InkWell(
              onTap: () {

              },
              child: Icon(Icons.shopping_bag_outlined,
              size: 32,),
            ),
              ),

        ],
      ),
    );
  }
}
