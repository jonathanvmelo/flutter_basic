import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/componets/drawer/info_card.dart';
import 'package:flutter_project/models/rive_asset_model.dart';
import 'package:flutter_project/utils/rive_util.dart';
import 'package:rive/rive.dart';

import 'componets/side_menu_tile.dart';

class SideMenu extends StatefulWidget {
  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  // String title;

  RiveAsset selectedMenu = sidemenus.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288,
        height: double.infinity,
        color: Color(0x0FF17203A),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoCard(name: "Gabriel", subTitle: "Melo"),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                child: Text("Browse".toUpperCase(), style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white70)),
              ),
             ...sidemenus.map((menu) =>  SideMenuTile(
               menu: menu,
               riveonInit: (artboard){
                 StateMachineController controler =
                     RiveUtil.getRiveController(artboard, stateMachineName: menu.stateMachineName);
                 menu.input = controler.findSMI("active") as SMIBool;
               },
               press: (){
                 if (menu.input != null) {
                   menu.input!.change(true);
                   Future.delayed(Duration(seconds: 1), (){
                     if (menu.input != null) {
                       menu.input!.change(false);
                     }
                     setState(() {
                       selectedMenu = menu;
                     });
                   });
                 }

               },
               isActive: selectedMenu == menu,
             ),

             ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                child: Text("History".toUpperCase(), style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white70)),
              ),
              ...sidemenus2.map((menu) =>  SideMenuTile(
                menu: menu,
                riveonInit: (artboard){
                  StateMachineController controler =
                  RiveUtil.getRiveController(artboard, stateMachineName: menu.stateMachineName);
                  menu.input = controler.findSMI("active") as SMIBool;
                },
                press: (){
                  if (menu.input != null) {
                    menu.input!.change(true);
                    Future.delayed(Duration(seconds: 1), (){
                      if (menu.input != null) {
                        menu.input!.change(false);
                      }
                      setState(() {
                        selectedMenu = menu;
                      });
                    });
                  }

                },
                isActive: selectedMenu == menu,
              ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}


