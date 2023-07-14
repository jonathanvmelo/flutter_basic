import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


class SideMenuTile extends StatelessWidget {

  // String title;
  // Icon icon;
  // final VoidCallback onTap;
  //
  // SideMenuTile({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Divider(color: Colors.white24,
          height: 1,),
        ),

        ListTile(
          onTap: () {},
          leading: SizedBox(height: 34, width: 34,
            child: RiveAnimation.asset("assets/RiveAssets/icons.riv",
            artboard: "HOME",
            onInit: (artbpard) {} ,
            ) ,
          ),
           title: Text("Home", style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
}